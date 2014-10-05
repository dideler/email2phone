task :tunnel do
  loop do
    system("localtunnel --port 3000 --subdomain email2phone")
  end
end

task :default => [:tunnel]
