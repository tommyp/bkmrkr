class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :title
      t.string :url
      t.references :domain

      t.timestamps
    end
    add_index :bookmarks, :domain_id
  end
end
