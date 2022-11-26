class AddPhoneToVenue < ActiveRecord::Migration[7.0]
  def change
    add_column :venues, :phone, :integer
  end
end
