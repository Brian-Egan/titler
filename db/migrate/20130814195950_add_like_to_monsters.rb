class AddLikeToMonsters < ActiveRecord::Migration
  def change
  	add_column :monsters, :like, :integer, :default => 0
  end
end
