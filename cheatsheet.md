# COMMAND CHEATSHEET
1. rails new habitapp -T -d=postgresql
2. After add rspec-rails to Gemfile
  1. bundle install
  2. rails g rspec:install
3. Add travis-ci integration via .travis.yml
  1. git push origin master
4. Add gem 'devise' for authentication, and then create user model (note that this is very dependent on devise)
  1. bundle install
  2. rails generate devise:install
  3. rails generate devise User
5. Add gem 'railroady' (https://github.com/preston/railroady) so printed UML diagrams of models are available (with relationships)
  1. brew install graphviz
  2. rake diagram:all
6. Add gem 'simplecov' (https://github.com/colszowka/simplecov), with additions to spec_helper.rb and .gitignore
  1. rake spec
  2. open coverage/index.html
7. 
