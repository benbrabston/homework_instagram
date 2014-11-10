Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

  # Routes to READ photos
  get("/all_photos", { :controller => "photos", :action => "index" })
  get("/photo_details/:id", { :controller => "photos", :action => "show" })

  # Route to CREATE photos
  get("/new_photo_form", { :controller => "photos", :action => "new_form"})
  get("/create_photo", { :controller => "photos", :action => "create_photo"})

  # DE-STROY
  get("/delete_photo/:id", { :controller => "photos", :action => "destroy"})

  # Update
  get("/edit_photo_form/:id", { :controller => "photos", :action => "update"})
  get("/update_photo/:id", { :controller => "photos", :action => "update_screen"})

end
