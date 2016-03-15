class CreateHolidays < ActiveRecord::Migration
  def change
    create_table :holidays do |t|
      t.string :name
      t.integer :date
      t.text :keywords
      t.text :description

      t.timestamps null: false
    end
  end
end