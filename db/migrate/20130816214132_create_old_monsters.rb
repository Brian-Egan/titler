class CreateOldMonsters < ActiveRecord::Migration
  def change
    create_table :old_monsters do |t|
    	t.string :name
    	t.string :adjective
    	t.string :noun
    	t.integer :likes_count

      t.timestamps
    end
  end
end
