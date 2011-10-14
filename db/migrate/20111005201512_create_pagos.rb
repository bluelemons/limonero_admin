class CreatePagos < ActiveRecord::Migration
  def change
    create_table :pagos do |t|
      t.integer :contrato_id
      t.decimal :monto,         :precision => 7, :scale => 2
      t.decimal :recargo,       :precision => 7, :scale => 2
      t.decimal :tasa,          :precision => 7, :scale => 2
      t.decimal :api,           :precision => 7, :scale => 2
      t.decimal :otro,          :precision => 7, :scale => 2
      t.date :fecha

      t.timestamps
    end
  end
end
