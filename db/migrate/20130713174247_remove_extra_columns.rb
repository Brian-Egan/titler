class RemoveExtraColumns < ActiveRecord::Migration
  def change
  	remove_column :adjectives, :word2
  	remove_column :nouns, :word2
  end
end
