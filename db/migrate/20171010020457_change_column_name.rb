class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :flights, :departure_id, :departing_id
  end
end
