class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :adopters, :password, :password_digest
    
  end
end
