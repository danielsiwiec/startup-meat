set :application, "StartupMeat"
set :repository,  "git@github.com:danielsiwiec/startup-meat.git"
set :deploy_to, "/deploy/"

set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`
set :branch, "master"

set :user, "vagrant"
set :password, "vagrant"
set :use_sudo, "true"
set :scm_passphrase, "vagrant"

set :rails_env, "production"

set :deploy_via, :copy
# set :ssh_options, { :forward_agent => true, :port => 4321 }
set :keep_releases, 5
default_run_options[:pty] = true
server "192.168.33.10", :app, :web, :db, :primary => true


