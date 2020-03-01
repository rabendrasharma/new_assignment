class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.string  :name
      t.integer :topic_id
      t.string  :topic_type
      t.timestamps
    end
  end
end
