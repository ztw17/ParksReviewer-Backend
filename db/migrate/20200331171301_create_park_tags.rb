class CreateParkTags < ActiveRecord::Migration[6.0]
  def change
    create_table :park_tags do |t|
      t.integer :park_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
