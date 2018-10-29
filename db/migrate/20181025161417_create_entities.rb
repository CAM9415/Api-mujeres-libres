class CreateEntities < ActiveRecord::Migration[5.2]
  def change
    create_table :entities do |t|
      t.string :entidad
      t.string :direccion
      t.integer :telefono
      t.float :latitud
      t.float :longitud
      t.timestamps
    end
  end
end
