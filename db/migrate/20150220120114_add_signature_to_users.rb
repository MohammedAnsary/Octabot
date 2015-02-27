class AddSignatureToUsers < ActiveRecord::Migration
  def change
    add_column :users, :sinature, :string
  end
end
