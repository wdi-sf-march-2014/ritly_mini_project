class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :original_link
      t.string :ritly_link
      t.integer :views_count

      t.timestamps
    end
  end
end
