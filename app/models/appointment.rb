class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor
  has_many :comments, through: :patients
  has_many :comments, through: :doctors
end
