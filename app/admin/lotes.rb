ActiveAdmin.register Lote do

  controller do
   # load_and_authorize_resource
   # skip_load_resource :only => :index
  end 

  action_item(:only => :show) do

    raw "#{link_to "Crear contrato", new_admin_lote_contrato_path(lote)} #{link_to "Ver contratos", admin_lote_contratos_path(lote)}"
    
  end 

end
