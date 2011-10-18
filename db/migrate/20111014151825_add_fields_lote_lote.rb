class AddFieldsLoteLote < ActiveRecord::Migration
  def up
    add_column :lotes, :lote, :string
  end

  def down
  end
end
