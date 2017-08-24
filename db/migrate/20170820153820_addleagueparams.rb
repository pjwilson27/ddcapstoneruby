class Addleagueparams < ActiveRecord::Migration
  def change
    change_table :leagues do |t|
    
    t.integer "teams"
    t.string "league_name"
    
    end
  end
end
