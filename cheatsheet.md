# COMMAND CHEATSHEET
1. `rails new habitapp -T -d=postgresql`
2. After add rspec-rails to Gemfile
  1. `bundle install`
  2. `rails g rspec:install`
3. Add travis-ci integration via .travis.yml (look at final .travis.yml for configuration, including of database)
  1. `git push origin master` to have travis ci perform build
4. Add gem 'devise' for authentication, and then create user model (note that this is very dependent on devise)
  1. `bundle install`
  2. `rails generate devise:install`
  3. `rails generate devise User`
5. Add gem 'railroady' (https://github.com/preston/railroady) so printed UML diagrams of models are available (with relationships)
  1. `brew install graphviz`
  2. `rake diagram:all`
6. Add gem 'simplecov' (https://github.com/colszowka/simplecov), with additions to spec_helper.rb and .gitignore
  1. `rake spec`
  2. `open coverage/index.html`
7. Create N-2 relationship between Challenges and Photos `rails g model challenge title:string challenge_description:text forfeit_description:text forfeit_completed:boolean, photo:belongs_to photo:belongs_to number_of_times:integer number_of_days:integer start_date:date end_date:date user:belongs_to`
  1. Will have to change manually the foreign key for photos to be different (challenge_photo vs forfeit_photo)
8. add gem 'paperclip' && create photo model
  1. rails g model photo challenge:belongs_to
  2. rails g paperclip photo image
