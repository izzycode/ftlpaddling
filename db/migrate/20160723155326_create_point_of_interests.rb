class CreatePointOfInterests < ActiveRecord::Migration[5.0]
  def change
    create_table :point_of_interests do |t|
      t.string :lat
      t.string :long
      t.string :name
      t.string :url
      t.string :photo_url
      t.string :region

      t.timestamps
    end
  end
end
