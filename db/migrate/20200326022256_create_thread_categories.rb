class CreateThreadCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :thread_categories do |t|
      t.integer :topic_id
      t.integer :category_id

      t.timestamps
    end
  end
end
