class ChangeImageUrlColumnToAvatar < ActiveRecord::Migration[6.0]
  def change
    rename_column :adopters, :image_url, :avatar
  end
end
