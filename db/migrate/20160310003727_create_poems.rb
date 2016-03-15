class CreatePoems < ActiveRecord::Migration
  def change
    create_table :poems do |t|
      t.text :text
      t.integer :holiday_id
      t.integer :author_id

      t.timestamps null: false
    end
  end
end