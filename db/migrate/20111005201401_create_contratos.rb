class CreateContratos < ActiveRecord::Migration
  def change
    create_table :contratos do |t|
      t.date :inicio
      t.integer :lote_id
      t.integer :ncuotas
      t.decimal :cuota,         :precision => 10, :scale => 2
      t.decimal :cuota_inicial, :precision => 10, :scale => 2
      t.decimal :interes,       :precision => 6,  :scale => 3
      t.text :observaciones

      t.timestamps
    end
  end
end
