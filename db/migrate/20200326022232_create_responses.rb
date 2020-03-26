class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.integer :user_id
      t.integer :topic_id
      t.text :comment

      t.timestamps
    end
  end
end
