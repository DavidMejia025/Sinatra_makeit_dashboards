class AddColumnForImgUrlAtOwners < ActiveRecord::Migration[5.0]
  def change
  	add_column :owners, :img_url, :string
  end
end
