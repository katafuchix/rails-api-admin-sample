# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# rails-api-admin-sample

### gem 

```
% bundle install --path vendor/bundle
```

### DB

```
% bin/rake db:create
% bundle exec ridgepole --config ./config/database.yml --file ./db/Schemafile --apply
% bin/rake db:seed_fu
```

### start

```
% bin/rails s
```

### URL

・ http://localhost:3000/admin/


### swagger

・ http://localhost:3000/api/swagger


### webpackでエラーが出る場合

```
% bin/rails webpacker:install
```

config/webpack/environment.js の内容をブランチのもので上書き


### init

```
% bundler init
% bundle add rails
% bundle install --path vendor/bundle
% bundle exec rails new . --skip-action-mailer --skip-active-storage --skip-action-cable 
% bundle install --path vendor/bundle  
% yarn install --check-files
% yarn add admin-lte@3.0.5
% yarn add jquery
% yarn add popper.js
% yarn add @fortawesome/fontawesome-free
% yarn add font-awesome
% yarn add toastr
% yarn add tempusdominus-bootstrap-4
% yarn add jquery-ui
% yarn add select2
% bin/rails g devise:install 
% bin/rake db:create
% bundle exec ridgepole --config ./config/database.yml --file ./db/Schemafile --apply
% bin/rake db:seed_fu
```
