class RemoveDateFromHolidays < ActiveRecord::Migration
  def change
    remove_column :holidays, :date
  end
end
