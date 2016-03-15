class RemoveDescriptionAndKeywordsFromPoems < ActiveRecord::Migration
  def change
    remove_column :poems, :description
    remove_column :poems, :keywords
  end
end
