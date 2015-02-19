class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :username
      t.string :photo, :default => ""
      t.boolean :admin, :default => fault
      t.string :signature, :default => ""

      t.timestamps null: false
    end
  end
end
