# P3-Use-Case-Model-Relationship-Building
CRM’s are products designed to track your relationship with clients. This project explores those methods programmatically using a Ruby on Rails application.

## Project Requirements
[Read More](https://github.com/Marti-Dolce-Flatiron-School-Projects/P3-Use-Case-Model-Relationship-Building/issues/1)

## Project Specifications
[Read More](https://github.com/Marti-Dolce-Flatiron-School-Projects/P3-Use-Case-Model-Relationship-Building/wiki/02_Specifications)

## Documentation
[Read More](https://github.com/Marti-Dolce-Flatiron-School-Projects/P3-Use-Case-Model-Relationship-Building/wiki)

## Notes

rails g controller sessions new create login

resources :users, only: [:new, :create]

- get 'login', to: 'sessions#new'
  
- post 'login', to: 'sessions#create'
  
- get 'welcome', to: 'sessions#welcome'


Updating heroku: git push heroku HEAD:main/master

Migrating heroku: heroku run rails db:migrate db:seed, etc. 


