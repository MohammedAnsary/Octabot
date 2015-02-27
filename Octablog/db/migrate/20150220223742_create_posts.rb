class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
 	   t.belongs_to :user, index: true
 	  	t.string :category
 	   t.string :title
  	  t.text :content
  		  t.timestamp :timing
  	  t.timestamps null: false
    end
  end
end
