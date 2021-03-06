class Bio < ApplicationRecord

  # giving the id for select_tags
  enum occupation: [:employed, :student, :freelancer, :other]
  enum gender: [:male, :female, :unspecified]

  # Defining associations
  belongs_to :user
  validates_uniqueness_of :username

  # For geocoder
  geocoded_by :locality
  after_validation :geocode, if: ->(obj){ obj.locality.present? and obj.locality_changed? }
  #validates_presence_of :fullname,:username, :locality, :occupation, :contact_number, :college_school_name, :dob, :gender
end
