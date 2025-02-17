Rails.application.routes.draw do

  get("/", { :controller => "items", :action => "index" })
  get("/backdoor", { :controller => "items", :action => "show_form" })
  post("/backdoor/new_item", { :controller => "items", :action => "add_item" })

end
