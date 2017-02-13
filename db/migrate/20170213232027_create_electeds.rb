class CreateElecteds < ActiveRecord::Migration
  def change
    create_table :electeds do |t|
      t.string :category
      t.string :level      
      t.timestamps null: false
    end
  end
end
