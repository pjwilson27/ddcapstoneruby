class AddTitleAndBodyToBlogs < ActiveRecord::Migration
  def change
    change_table :blogs do |t|
      
      t.string :title
      t.text :body
    end
  end
end
