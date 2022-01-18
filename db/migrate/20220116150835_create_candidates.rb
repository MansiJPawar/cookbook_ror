class CreateCandidates < ActiveRecord::Migration[7.0]
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :profile
      t.text :letter
      t.boolean :immediate

      t.timestamps
    end
  end
end
