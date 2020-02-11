require 'json'
require 'open-uri'
require 'fileutils'
require 'uri'

base_url = "http://vimcolors.com/api/colorschemes"

FileUtils.mkdir_p "repos"
Dir.chdir "repos"

def clone_repo(github_path)
  # Generate an output name based upon the number of stars the repo has
  # so that themes with more stars get selected in case of duplicate names
  stars_prefix = "%05d" % stars_count(github_path)
  local_path = "#{stars_prefix}#{github_path.gsub('/', '-')}"

  # Begin clone
  clone_command = "git clone git@github.com:#{github_path} #{local_path}"
  puts clone_command
  pid = Process.spawn(clone_command)

  begin
    Timeout.timeout(15) do
      Process.wait(pid)
    end
  rescue Timeout::Error
    puts 'Canceling clone, taking too long'
    Process.kill('TERM', pid)
  end
rescue OpenURI::HTTPError
  puts "Repo #{github_path} appears inactive. Canceling copy."
end

def stars_count(github_path)
  repo_info_url = "https://api.github.com/repos#{github_path}?access_token=#{github_access_token}"
  repo_info = JSON.parse(open(repo_info_url).read)
  repo_info["stargazers_count"]
end

def github_username
  if ENV['GITHUB_USERNAME']
    ENV['GITHUB_USERNAME']
  else
    fail "Set GITHUB_USERNAME environment variable"
  end
end

def github_access_token
  if ENV['GITHUB_ACCESS_TOKEN']
    ENV['GITHUB_ACCESS_TOKEN']
  else
    fail "Please generate a GitHub access token (https://github.com/settings/tokens), and set it to the GITHUB_ACCESS_TOKEN environment variable"
  end
end

# Get up to 100 pages of colorschemes
(1..100).each do |i|
  json = JSON.parse(open("#{base_url}?page=#{i}",
    http_basic_authentication: [github_username, github_access_token]
  ).read)

  # Quit if at end of the list
  break if json["colorschemes"].nil?

  # For each colorscheme, clone the git repo
  json["colorschemes"].each do |colorscheme|
    github_repo = colorscheme["github_repo"]["address"]
    begin
      uri = URI(github_repo)
      clone_repo(uri.path)
    rescue URI::InvalidURIError
      puts "Repo #{github_repo} does not have a properly formatted URL. Canceling copy"
    end
  end
  sleep 1
end

# Copy files into the colors directory
Dir.chdir ".."
system("ls ./repos | sort -z | xargs -L 1 -i find ./repos/{}colors -name \"*.vim\" -type f -print0 | xargs -L 1 -r0 cp -t \"./colors/\"")
