class CreateLotes < ActiveRecord::Migration
  def change
    create_table :lotes do |t|
      t.integer :loteo_id
      t.string :manzana
      t.string :parcela
      t.string :partida
      t.integer :ncuotas
      t.decimal :cuota,         :precision => 10, :scale => 2
      t.decimal :cuota_inicial, :precision => 10, :scale => 2
      t.decimal :interes,       :precision => 6,  :scale => 4

      t.timestamps
    end
  end
end
