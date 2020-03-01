class CreateFolllows < ActiveRecord::Migration[5.2]
  def change
    create_table :folllows do |t|
      t.integer :follower_id
      t.string :follower_type
      t.integer :followee_id
      t.timestamps
    end
  end
end
