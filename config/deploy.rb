lock "3.1.0"

set :application,   "bloodbase"

set :scm,           :git
set :repo_url,      "git@github.com:9-volt/bloodbase.git"
set :branch,        "master"
set :deploy_to,     "/data/www/#{fetch(:application)}"
set :keep_releases, 5

set :log_level,     :info
set :format,        :pretty

set :pty,           true
set :use_sudo,      false
set :user,          "donator"
set :password,      ask("Server password:", nil)
set :ssh_options, {
  user:          fetch(:user),
  forward_agent: true,
  port:          4321
}

namespace :deploy do
  # %i(start stop restart).each do |command|
  #   desc "#Start/Stop/Restart application"
  #   task command do
  #     on roles(:app), in: :sequence, wait: 5 do
  #       execute "/etc/init.d/unicorn_#{fetch(:application)} #{command}"
  #     end
  #   end
  # end

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

  # after :publishing, :restart
end
