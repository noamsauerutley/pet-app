class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.belongs_to :shelter, null: false, foreign_key: true
      t.text :description
      t.string :image_url
      t.boolean :adoption_status

      t.timestamps
    end
  end
end
