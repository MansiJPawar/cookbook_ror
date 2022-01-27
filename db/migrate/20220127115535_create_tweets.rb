class CreateTweets < ActiveRecord::Migration[7.0]
  def change
    create_table :tweets do |t|
      t.string :name
      t.text :content
      #added association,index allow find tweet faster
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
