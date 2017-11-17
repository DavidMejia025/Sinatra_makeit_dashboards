class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.string :title
      t.text   :body
      t.string :autor

      t.timestamp
    end
  end
end
