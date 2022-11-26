class AddWebsiteToVenue < ActiveRecord::Migration[7.0]
  def change
    add_column :venues, :website, :string
  end
end
