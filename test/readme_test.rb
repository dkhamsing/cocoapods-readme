require 'cocoapods-readme'

REPO = 'dkarchive/test-readme-correct'
LOGFILE = 'log.txt'

def log(string)
  puts string
  File.open(LOGFILE, 'a') { |f| f.puts string }
end

log "Testing retrieval of README for #{REPO}"

c = Octokit
_, readme = CocoapodsReadme::github_readme c, REPO

if readme.nil?
  log "Could not get README"
  exit
end

log '- README begin -----------------------'
log readme
log '- README end -----------------------'

log 'Retrieved README ✅'
