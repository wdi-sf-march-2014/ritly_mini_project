class CreateRits < ActiveRecord::Migration
  def change
    create_table :rits do |t|
      t.string :link
      t.string :random

      t.timestamps
    end
  end
end
