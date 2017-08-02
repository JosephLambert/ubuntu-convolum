# Puma can serve each request in a thread from an internal thread pool.
# The `threads` method setting takes two numbers a minimum and maximum.
# Any libraries that use thread pools should be configured to match
# the maximum value specified for Puma. Default is set to 5 threads for minimum
# and maximum, this matches the default thread size of Active Record.
#

# threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }.to_i
# threads threads_count, threads_count

# port        ENV.fetch("PORT") { 3000 }

# environment ENV.fetch("RAILS_ENV") { "development" }
# plugin :tmp_restart

environment 'production'

workers 1
threads 1, 5

application_path = '/var/www/convolum'

directory "#{application_path}/current"

pidfile "#{application_path}/shared/tmp/pids/puma.pid"
state_path "#{application_path}/shared/tmp/sockets/puma.state"
stdout_redirect "#{application_path}/shared/log/puma.stdout.log", "#{application_path}/shared/log/puma.stderr.log"

bind "unix://#{application_path}/shared/tmp/sockets/puma.sock"

activate_control_app "unix://#{application_path}/shared/tmp/sockets/pumactl.sock"

daemonize true
preload_app!
