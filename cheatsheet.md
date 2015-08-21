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
5. [Add gem 'railroady'](https://github.com/preston/railroady) so printed UML diagrams of models are available (with relationships)
  1. `brew install graphviz`
  2. `rake diagram:all`
6. [Add gem 'simplecov'](https://github.com/colszowka/simplecov), with additions to spec_helper.rb and .gitignore
  1. `rake spec`
  2. `open coverage/index.html`
7. Create model challenge - `rails g model challenge title:string challenge_description:text forfeit_description:text forfeit_completed:boolean number_of_times:integer number_of_days:integer start_date:date end_date:date user:belongs_to`
  1. Add `has_many :challenges` to User model
  2. `rake db:migrate`
8. add gem 'paperclip' && create photo model
  1. rails g model photo
  2. rails g paperclip photo image
9.  Create N-2 relationship between Challenges and Photos - add 2 foreign keys to Photos `rails g migration AddPhotosToChallenges photo:belongs_to photo:belongs_to`
  1. Will have to take out `foreign_key: true` that's automatically generated for foreign key referential integerity (add later with imigrant)
  2. `rake db:reset`
  3. [Modify models to have appropriate has_many and belongs_to.](https://robots.thoughtbot.com/referential-integrity-with-foreign-keys)

## TODO
10. Will have to change manually the foreign key for photos to be different (challenge_photo vs forfeit_photo)
  1. # Immigrant to generate migration for foreing keys, gem 'immigrant'
