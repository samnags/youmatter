class CreateUserElecteds < ActiveRecord::Migration
  def change
    create_table :user_electeds do |t|
      t.integer :elected_id
      t.string :first_name
      t.string :last_name
      t.string :party
      t.integer :user_id
      t.boolean :verified, default: false
      t.timestamps null: false
    end
  end
end
