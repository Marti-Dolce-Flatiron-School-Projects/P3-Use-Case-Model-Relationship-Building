# P3-Use-Case-Model-Relationship-Building
CRM’s are products designed to track your relationship with clients. This project explores those methods programmatically using a Ruby on Rails application.

## Project Requirements
[Read More](https://github.com/Marti-Dolce-Flatiron-School-Projects/P3-Use-Case-Model-Relationship-Building/issues/1)

## Project Specifications
[Read More](https://github.com/Marti-Dolce-Flatiron-School-Projects/P3-Use-Case-Model-Relationship-Building/wiki/02_Specifications)

## Documentation
[Read More](https://github.com/Marti-Dolce-Flatiron-School-Projects/P3-Use-Case-Model-Relationship-Building/wiki)

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ gem install bundler -v 2.2.16
$ bundle _2.2.16_ config set --local without 'production'
$ bundle _2.2.16_ install
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

## Notes

rails g controller sessions new create login

resources :users, only: [:new, :create]

- get 'login', to: 'sessions#new'
  
- post 'login', to: 'sessions#create'
  
- get 'welcome', to: 'sessions#welcome'

Add All Files: git add -A

Updating heroku: git push heroku HEAD:main/master

Migrating heroku: heroku run rails db:migrate db:seed, etc. 


