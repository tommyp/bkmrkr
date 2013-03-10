class AddBookmarkedAtToDomains < ActiveRecord::Migration
  def change
    add_column :domains, :last_bookmarked_at, :datetime
  end
end
