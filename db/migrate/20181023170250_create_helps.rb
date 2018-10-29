class CreateHelps < ActiveRecord::Migration[5.2]
  def change
    create_table :helps do |t|
      t.string :legislacion
      t.date :fecha
      t.string :sentencias
      t.timestamps
    end
  end
end
