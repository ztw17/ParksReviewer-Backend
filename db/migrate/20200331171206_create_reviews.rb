class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :content
      t.date :visit_date
      t.integer :rating
      t.integer :park_id
      t.integer :user_id
      t.string :image

      t.timestamps
    end
  end
end
