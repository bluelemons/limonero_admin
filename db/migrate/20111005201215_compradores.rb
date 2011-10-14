class Compradores < ActiveRecord::Migration
  def change
    create_table :compradores, :id => false do |t|
      t.integer :person_id
      t.integer :contrato_id
    end
  end
end
