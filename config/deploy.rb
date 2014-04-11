lock "3.1.0"
#require 'capistrano/deploy_lock'

set :application,   "doneaza"

set :scm,           :git
set :repo_url,      "git@github.com:9-volt/bloodbase.git"
set :branch,        "master"
set :deploy_to,     "/home/donator/#{fetch(:application)}"
set :keep_releases, 2

set :log_level,     :debug
set :format,        :pretty

set :linked_files,  %w{ config/database.yml }
set :linked_dirs,   %w{ public/system }
set :pty,           true
set :use_sudo,      false
set :user,          "donator"
set :ssh_options, {
  user:          fetch(:user),
  forward_agent: true,
  port:          4321
}

set :puma_bind, "tcp://0.0.0.0:8080"

desc "tail rails logs"
task :logs do
  on roles(:app) do
    execute "tail -f #{shared_path}/log/#{fetch(:rails_env)}.log"
  end
end

namespace :rails do
  desc 'Access a remote rails console'
  task console: ['deploy:set_rails_env'] do
    app_server = roles(:app).first

    command = []
    command << "bundle exec"
    command << "rails console #{fetch(:rails_env)}"

    exec %Q(ssh #{app_server.user}@#{app_server.hostname} -p #{app_server.port || 22} -t "cd #{current_path} && #{command.join(' ')}")
  end
end