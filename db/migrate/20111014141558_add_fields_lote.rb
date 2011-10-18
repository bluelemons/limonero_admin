class AddFieldsLote < ActiveRecord::Migration
  def self.up
    add_column :lotes, :cuenta, :string
    add_column :lotes, :plano, :string

  end

  def self.down
    remove_index :lotes, :cuenta
    remove_index :lotes, :plano
  end
end
