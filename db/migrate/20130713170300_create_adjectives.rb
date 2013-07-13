class CreateAdjectives < ActiveRecord::Migration
  def change
    create_table :adjectives do |t|
      t.string :word
      t.string :word2

      t.timestamps
    end
  end
end
