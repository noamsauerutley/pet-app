class CreateAdopters < ActiveRecord::Migration[6.0]
  def change
    create_table :adopters do |t|
      t.string :name
      t.string :description
      t.string :zip
      t.string :image_url
      t.string :password

      t.timestamps
    end
  end
end
