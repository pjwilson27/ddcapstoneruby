class Addtoleagueparams < ActiveRecord::Migration
  def change
    change_table :leagues do |t|
      t.boolean "keepers"
    end
  end
end
