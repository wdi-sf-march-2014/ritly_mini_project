class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :link
      t.string :Hyperlink
      t.string :random_string
      t.string :text

      t.timestamps
    end
  end
end
