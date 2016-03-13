class AddDateToHoliday < ActiveRecord::Migration
  def change
    add_column :holidays, :date, :integer
  end
end
