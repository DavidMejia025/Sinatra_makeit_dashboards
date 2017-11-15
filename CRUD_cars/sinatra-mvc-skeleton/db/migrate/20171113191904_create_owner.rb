class CreateOwner < ActiveRecord::Migration[5.0]
  def change
  	create_table :owner do |t|
  		t.string :First_name
  		t.string :Last_name

  		t.timestamps
  	end
  end
end
