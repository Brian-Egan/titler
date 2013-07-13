class CreateNouns < ActiveRecord::Migration
  def change
    create_table :nouns do |t|
      t.string :word
      t.string :word2

      t.timestamps
    end
  end
end
