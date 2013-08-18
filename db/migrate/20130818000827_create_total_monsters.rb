class CreateTotalMonsters < ActiveRecord::Migration
  def change
    create_table :total_monsters do |t|
    	t.integer :monster_count

      t.timestamps
    end
  end
end
