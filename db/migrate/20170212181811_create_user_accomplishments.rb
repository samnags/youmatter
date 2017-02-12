class CreateUserAccomplishments < ActiveRecord::Migration
  def change
    create_table :user_accomplishments do |t|
      t.integer :user_id
      t.boolean :attended_workshop, default: false
      t.boolean :registered, default: false
      t.boolean :added_electeds, default: false           
      t.timestamps null: false
    end
  end
end
