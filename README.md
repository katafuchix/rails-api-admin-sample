# README

<div>
<img width="500" alt="スクリーンショット 2021-06-27 12 41 36" src="https://user-images.githubusercontent.com/6063541/123532417-de782e00-d747-11eb-9da0-38aa2a3dec0b.png">

<img width="500" alt="スクリーンショット 2021-06-27 12 36 40" src="https://user-images.githubusercontent.com/6063541/123532430-f6e84880-d747-11eb-8b1d-92c0ec3bde01.png">

</div>
<div>

<img width="500" alt="スクリーンショット 2021-06-27 12 37 53" src="https://user-images.githubusercontent.com/6063541/123532436-fbacfc80-d747-11eb-828f-805842ed337a.png">

<img width="500" alt="スクリーンショット 2021-06-27 12 40 05" src="https://user-images.githubusercontent.com/6063541/123532437-fcde2980-d747-11eb-83ac-8bcf8ca7d438.png">

</div>
<div>
  
<img width="500" alt="スクリーンショット 2021-06-27 12 40 39" src="https://user-images.githubusercontent.com/6063541/123532438-fd76c000-d747-11eb-9995-27f391e11329.png">

<img width="500" alt="スクリーンショット 2021-06-27 12 41 58" src="https://user-images.githubusercontent.com/6063541/123532424-ea63f000-d747-11eb-8601-293a66259993.png">

</div>

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
