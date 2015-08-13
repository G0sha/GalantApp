root = "/opt/www/GalantApp/current"
working_directory root
pid "#{root}/tmp/pids/unicorn.pid"
stderr_path "#{root}/log/unicorn-err.log"
stdout_path "#{root}/log/unicorn.log"

listen "/tmp/unicorn.galantapp.sock"
worker_processes 1
timeout 30
