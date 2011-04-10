class AddUserToRestaurents < ActiveRecord::Migration
  def self.up
    add_column :restaurents, :user_id, :preferences
  end

  def self.down
    remove_column :restaurents, :user_id
  end
end
