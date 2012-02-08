require "bundler/capistrano"

require "./config/capistrano_database"

# RVM
$:.unshift(File.expand_path('./lib', ENV['rvm_path']))
require "rvm/capistrano"

set :rvm_ruby_string, 'ruby-1.9.2-p290'

set :application, "lyche"
set :deploy_to, "/srv/www/samfundet.no/lyche/public_html"
# set :template_dir, "/home/jonas/.capistrano/invoiced"

default_run_options[:pty] = true
set :scm, :git
set :repository,  "git@github.com:Samfundet/Lyche.git"
set :user, "jonas"
set :branch, "master"

role :web, "login.danseku.no"                          # Your HTTP server, Apache/etc
role :app, "login.danseku.no"                          # This may be the same as your `Web` server
role :db,  "login.danseku.no", :primary => true        # This is where Rails migrations will run

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end


# # ==============================
# # Uploads
# # ==============================
# 
# namespace :uploads do
# 
#   desc <<-EOD
#     Creates the upload folders unless they exist
#     and sets the proper upload permissions.
#   EOD
#   task :setup, :except => { :no_release => true } do
#     dirs = uploads_dirs.map { |d| File.join(shared_path, d) }
#     run "#{try_sudo} mkdir -p #{dirs.join(' ')} && #{try_sudo} chmod g+w #{dirs.join(' ')}"
#   end
# 
#   desc <<-EOD
#     [internal] Creates the symlink to uploads shared folder
#     for the most recently deployed version.
#   EOD
#   task :symlink, :except => { :no_release => true } do
#     run "rm -rf #{release_path}/public/uploads"
#     run "ln -nfs #{shared_path}/uploads #{release_path}/public/uploads"
#   end
# 
#   desc <<-EOD
#     [internal] Computes uploads directory paths
#     and registers them in Capistrano environment.
#   EOD
#   task :register_dirs do
#     set :uploads_dirs,    %w(uploads uploads/partners)
#     set :shared_children, fetch(:shared_children) + fetch(:uploads_dirs)
#   end
#   
#   after       "deploy:finalize_update", "uploads:symlink"
#   on :start,  "uploads:register_dirs"
# end