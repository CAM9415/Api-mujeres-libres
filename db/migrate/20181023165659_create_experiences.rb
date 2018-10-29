class CreateExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :experiences do |t|
      t.references :user, foreign_key: true
      t.string :pseudonimo
      t.string :foto
      t.string :experiencia
      t.timestamps
    end
  end
end
