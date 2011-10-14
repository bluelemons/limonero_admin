ActiveAdmin.register Contrato do

  controller do
   # load_and_authorize_resource
   # skip_load_resource :only => :index
  end

  belongs_to :lote

  action_item(:only => :show) do

    raw "#{link_to "Crear pago", new_admin_contrato_pago_path(contrato)} #{link_to "Ver pagos", admin_contrato_pagos_path(contrato)}"
    
  end
  show do
    panel "Contrato" do
      attributes_table_for contrato,
       :id,:inicio,:ncuotas,:cuota,:interes
    end


    panel "Compradores" do
      table_for contrato.compradores do |t|
         t.column :id
         t.column :doc
         t.column(:name) {|item| link_to item.name, admin_person_path(item) }
      end
    end
  end

  form do |f|

    f.inputs "Details" do
      f.input :inicio, :as=>:string, :input_html => {:class => 'datepicker',:size=>10}
      f.input :compradores_tokens,
      :input_html => {
        "data-pre" => f.object.compradores.to_json(:methods => :name), :only => [:id, :name] }
      f.input :ncuotas
      f.input :cuota
      f.input :cuota_inicial
      f.input :interes
      f.input :observaciones
    end

    f.buttons
  end

  controller do
    def create

      create! do |format|
        format.html {redirect_to admin_lote_path @lote}
      end
    end

    def update

      update! do |format|
        format.html {redirect_to admin_lote_path @lote}
      end
    end

  end
end
