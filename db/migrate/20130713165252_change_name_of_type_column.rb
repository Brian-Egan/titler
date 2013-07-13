class ChangeNameOfTypeColumn < ActiveRecord::Migration
  def change
  	remove_column :descriptions, :type
  	add_column :descriptions, :kind, :string
  end
end
