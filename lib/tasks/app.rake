task :tunnel do
  system("localtunnel --port 3000 --subdomain email2phone")
end

task :default => [:tunnel]
