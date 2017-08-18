class CreateBlog < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :body
      t.integer :user_id
    end
    
    add_index :blogs, :user_id
    
  end
end
