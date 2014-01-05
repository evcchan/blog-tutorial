class CreateMenuitems < ActiveRecord::Migration
  def change
    create_table :menuitems do |t|
      t.string :title
      t.text :description
      t.float :price

      t.timestamps
    end
  end
end
