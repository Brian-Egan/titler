class ChangeNameOfLikeColumn < ActiveRecord::Migration
  def change
  	rename_column :monsters, :like, :likes_count
  end
end
