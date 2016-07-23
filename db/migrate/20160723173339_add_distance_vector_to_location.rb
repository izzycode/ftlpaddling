class AddDistanceVectorToLocation < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :distance, :float
    add_column :locations, :direction, :string
  end
end
