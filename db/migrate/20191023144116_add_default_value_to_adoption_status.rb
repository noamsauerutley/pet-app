class AddDefaultValueToAdoptionStatus < ActiveRecord::Migration[6.0]
  def change
    change_column_default :pets, :adoption_status, false
  end
end
