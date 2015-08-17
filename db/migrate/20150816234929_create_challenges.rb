class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :title
      t.text :challenge_description
      t.text :forfeit_description
      t.boolean, :forfeit_completed
      t.belongs_to :challenge_photo, index: true, foreign_key: true
      t.belongs_to :forfeit_photo, index: true, foreign_key: true
      t.integer :number_of_times
      t.integer :number_of_days
      t.date :start_date
      t.date :end_date
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
