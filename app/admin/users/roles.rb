ActiveAdmin.register Role do
  menu :parent => "Users"

  controller do
    load_and_authorize_resource
    skip_load_resource :only => :index
  end 
end
