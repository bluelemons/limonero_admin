class CreateLoteos < ActiveRecord::Migration
  def change
    create_table :loteos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
