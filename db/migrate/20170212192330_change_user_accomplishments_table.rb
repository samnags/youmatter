class ChangeUserAccomplishmentsTable < ActiveRecord::Migration
  def change
    remove_column :user_accomplishments, :attended_workshop
    remove_column :user_accomplishments, :registered
    remove_column :user_accomplishments, :added_electeds
    add_column :user_accomplishments, :accomplishment_id, :integer
  end
end
