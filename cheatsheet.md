# COMMAND CHEATSHEET
1. rails new habitapp -T -d=postgresql
2. After add rspec-rails to Gemfile
  1. bundle install
  2. rails g rspec:install
3. Add travis-ci integration via .travis.yml
  1. git push origin master
4. Add gem 'devise' for authentication, and then create user model
  1. bundle install
