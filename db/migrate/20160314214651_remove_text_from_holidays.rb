class RemoveTextFromHolidays < ActiveRecord::Migration
  def change
    remove_column :holidays, :text
  end
end
