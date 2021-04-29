Rails.application.routes.draw do
  # <!--============================= USERS   =============================-->
  # The application provides a way for HOA's to manage their properties, tenants and owners
  # Start with who will have access.  Users are defaulted to tenants, owners or admins.

  # Build the MVC rails g resource Users fname, lname, email with unique, password
  # bundle exec rails g resource User fname:string lname:string email:string

  resources :users


  # <!--============================= WELCOME =============================-->
  # Default Home page

  root 'application#hello'

end
