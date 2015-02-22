class CreateHighScores < ActiveRecord::Migration
  def change
    create_table :high_scores do |t|
      t.text :content

      t.timestamps null: false
    end
  end
end
