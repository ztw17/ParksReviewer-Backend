class AddActivitesToParks < ActiveRecord::Migration[6.0]
  def change
    add_column :parks, :activity, :string
  end
end
