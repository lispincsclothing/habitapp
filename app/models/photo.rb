class Photo < ActiveRecord::Base
  has_many :challenges, :class_name => 'Challenge', :foreign_key => 'challenge_photo_id'
  has_many :forfeits, :class_name => 'Challenge', :foreign_key => 'forfeit_photo_id'
end
