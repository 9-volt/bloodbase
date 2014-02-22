lock "3.1.0"

set :application,   "doneaza"

set :scm,           :git
set :repo_url,      "git@github.com:9-volt/bloodbase.git"
set :branch,        "master"
set :deploy_to,     "/home/donator/#{fetch(:application)}"
set :keep_releases, 2

set :log_level,     :info
set :format,        :pretty

set :pty,           true
set :use_sudo,      false
set :user,          "donator"
set :ssh_options, {
  user:          fetch(:user),
  forward_agent: true,
  port:          4321
}

namespace :deploy do
  %i(start stop restart).each do |command|
    desc "#Start/Stop/Restart application"
    task command do
      on roles(:app), in: :sequence, wait: 5 do
        execute "/etc/init.d/unicorn_bloodbase #{command}"
      end
    end
  end

  desc "copies the database config to the release folder"
  task :set_database_config do
    execute "cp /home/donator/doneaza/shared/config/*.yml /home/donator/doneaza/current/config/"
  end

  desc "Make sure local git is in sync with remote."
  task :check_revision do
    on roles(:web) do
      unless `git rev-parse HEAD` == `git rev-parse origin/master`
        puts "WARNING: HEAD is not the same as origin/master"
        puts "Run `git push` to sync changes."
        exit
      end
    end
  end
  before :deploy, "deploy:check_revision"

  before :setup, :set_database_config
  after :publishing,  :restart
end
