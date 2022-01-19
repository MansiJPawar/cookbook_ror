class CreateElections < ActiveRecord::Migration[7.0]
  def change
    create_table :elections do |t|
      t.string :name
      t.string :email
      t.string :password
      t.date :date_of_birth
      t.bigint :phone_number
      t.boolean :adult
      
      t.timestamps
    end
  end
end
