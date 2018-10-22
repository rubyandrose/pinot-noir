class CreatePost < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|

      t.integer :user_id, 		 null: false 

      ## Trackable
      t.text :content

      t.timestamps

    end

    add_foreign_key :users, :posts
  end
end
