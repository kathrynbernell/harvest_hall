Rails.application.routes.draw do
  # Routes for the Fruit_farmer resource:
  # CREATE
  get "/fruit_farmers/new", :controller => "fruit_farmers", :action => "new"
  post "/create_fruit_farmer", :controller => "fruit_farmers", :action => "create"

  # READ
  get "/fruit_farmers", :controller => "fruit_farmers", :action => "index"
  get "/fruit_farmers/:id", :controller => "fruit_farmers", :action => "show"

  # UPDATE
  get "/fruit_farmers/:id/edit", :controller => "fruit_farmers", :action => "edit"
  post "/update_fruit_farmer/:id", :controller => "fruit_farmers", :action => "update"

  # DELETE
  get "/delete_fruit_farmer/:id", :controller => "fruit_farmers", :action => "destroy"
  #------------------------------

  # Routes for the Farmer resource:
  # CREATE
  get "/farmers/new", :controller => "farmers", :action => "new"
  post "/create_farmer", :controller => "farmers", :action => "create"

  # READ
  get "/farmers", :controller => "farmers", :action => "index"
  get "/farmers/:id", :controller => "farmers", :action => "show"

  # UPDATE
  get "/farmers/:id/edit", :controller => "farmers", :action => "edit"
  post "/update_farmer/:id", :controller => "farmers", :action => "update"

  # DELETE
  get "/delete_farmer/:id", :controller => "farmers", :action => "destroy"
  #------------------------------

  # Routes for the Fruit resource:
  # CREATE
  get "/fruits/new", :controller => "fruits", :action => "new"
  post "/create_fruit", :controller => "fruits", :action => "create"

  # READ
  get "/fruits", :controller => "fruits", :action => "index"
  get "/fruits/:id", :controller => "fruits", :action => "show"

  # UPDATE
  get "/fruits/:id/edit", :controller => "fruits", :action => "edit"
  post "/update_fruit/:id", :controller => "fruits", :action => "update"

  # DELETE
  get "/delete_fruit/:id", :controller => "fruits", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
