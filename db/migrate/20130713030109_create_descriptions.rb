class CreateDescriptions < ActiveRecord::Migration
  def change
    create_table :descriptions do |t|
      t.string :word
      t.string :type

      t.timestamps
    end
  end
end
