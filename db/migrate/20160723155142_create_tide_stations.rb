class CreateTideStations < ActiveRecord::Migration[5.0]
  def change
    create_table :tide_stations do |t|
      t.string :name
      t.string :current_data
      t.integer :mobilegeographics_id

      t.timestamps
    end
  end
end
