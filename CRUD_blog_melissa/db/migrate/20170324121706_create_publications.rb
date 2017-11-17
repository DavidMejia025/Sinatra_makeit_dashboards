class CreatePublications < ActiveRecord::Migration[5.0]
  def change
    create_table :publications do |t|
      t.belongs_to :entry, index: true
      t.belongs_to :tag, index: true


      t.timestamp
    end
  end
end
