class Patient < ApplicationRecord
has_many :appoitnments
has_many :doctors, through: :appointments

def full_name
  "#{self.first_name} #{self.last_name}"
end
end
