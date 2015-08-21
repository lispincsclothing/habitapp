class Challenge < ActiveRecord::Base
  belongs_to :challenge_photo, :class_name => 'Photo'
  belongs_to :forfeit_photo, :class_name => 'Photo'
end
