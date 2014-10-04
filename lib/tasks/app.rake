task :tunnel do
  begin
    system("localtunnel --port 3000 --subdomain email2phone")
  rescue
    sleep(2)
    retry
  end
end

task :default => [:tunnel]
