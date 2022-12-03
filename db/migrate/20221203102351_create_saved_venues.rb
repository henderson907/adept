class CreateSavedVenues < ActiveRecord::Migration[7.0]
  def change
    create_join_table :users, :venues, table_name: :saved_venues do |t|
      t.index :user_id
      t.index :venue_id
    end
  end
end
