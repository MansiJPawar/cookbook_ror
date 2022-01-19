class Updatecolumn < ActiveRecord::Migration[7.0]
  def change
    add_column :elections, :adult, :boolean
  end
end
