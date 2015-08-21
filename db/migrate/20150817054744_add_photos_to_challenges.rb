class AddPhotosToChallenges < ActiveRecord::Migration
  def change
    # http://stackoverflow.com/questions/13694654/specifying-column-name-in-a-references-migration
    add_reference :challenges, :challenge_photo, references: :photos, index: true
    add_reference :challenges, :forfeit_photo, references: :photos, index: true
    # took out foreign_key: true for both lines, adding back later with immigrant
  end
end
