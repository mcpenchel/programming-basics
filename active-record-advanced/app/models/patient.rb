class Patient < ActiveRecord::Base
  has_many :consultations
  belongs_to :intern
end
