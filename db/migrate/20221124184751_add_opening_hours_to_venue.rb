class AddOpeningHoursToVenue < ActiveRecord::Migration[7.0]
  def change
    add_column :venues, :hours, :integer
  end
end
