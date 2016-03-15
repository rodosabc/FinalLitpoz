class AddDateToHolidays < ActiveRecord::Migration
  def change
    add_column :holidays, :date, :integer
  end
end
