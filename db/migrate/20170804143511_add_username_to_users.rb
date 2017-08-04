class AddUsernameToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      
      t.text :username

    end
  end
end
