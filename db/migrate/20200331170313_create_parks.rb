class CreateParks < ActiveRecord::Migration[6.0]
  def change
    create_table :parks do |t|
      t.string :name
      t.string :state
      t.string :description
      t.string :weather
      t.decimal :longitude
      t.decimal :latitude
      t.string :image
      t.references :creator

      t.timestamps
    end
    add_foreign_key :parks, :users, column: :creator_id, primary_key: :id
  end
end
