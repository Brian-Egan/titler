class AddDescriptionsToMonsters < ActiveRecord::Migration
  def change
  	add_column :monsters, :adjective, :string
  	add_column :monsters, :noun, :string
  end
end
