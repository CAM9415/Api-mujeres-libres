class CreateCases < ActiveRecord::Migration[5.2]
  def change
    create_table :cases do |t|
      t.string :titulo
      t.string :foto
      t.string :contenido
      t.timestamps
    end
  end
end
