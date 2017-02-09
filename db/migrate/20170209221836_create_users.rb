class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.integer :zipcode
      t.integer :phone
      t.string :password_digest
      t.string :password_confirmation
      t.timestamps null: false
    end
  end
end
