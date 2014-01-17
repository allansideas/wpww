set :application, "woww"
set :repository,  "git@github.com:allansideas/wpww.git"
set :use_sudo,    false
set :rake, "bundle exec rake"
set :rvm_ruby_string, "ruby-2.0.0-p195"


set :normalize_asset_timestamps, false
set :scm, :git

ssh_options[:forward_agent] = true
default_run_options[:pty] = true

# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

task :staging do
  set :user,      "woww"
  set :domain,    "woww.instantiate.me"
  set :branch,    "master"
  set :rails_env, "staging"
  set :deploy_to, "/home/#{user}/api/"
  set :bundle_without, [:development, :test]

  role :web, domain
  role :app, domain
  role :db,  domain, :primary => true
end

namespace :site do
  task :symlink do
    run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
  end
  task :reset_db do
    rake_task("db:reset")
    rake_task("db:seed")
  end
end

namespace :rake do
  desc "Run a task on a remote server."
  # run like: cap staging rake:invoke task=a_certain_task
  task :invoke do
    rake_task(ENV['task'])
  end
end

before 'deploy', 'rvm:install_rvm'  # update RVM 
before 'deploy', 'rvm:install_ruby' # install Ruby and create gemset (both if missing) 

require "bundler/capistrano"
require 'rvm/capistrano'

after "deploy:restart", "deploy:cleanup"
after "deploy:update_code", "site:symlink"

def rake_task(task)
  run("cd #{deploy_to}/current; /usr/bin/env bundle exec rake #{task} ENV=#{rails_env}")
end

