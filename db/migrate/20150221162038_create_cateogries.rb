class CreateCateogries < ActiveRecord::Migration
  def change
    create_table :cateogries do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
