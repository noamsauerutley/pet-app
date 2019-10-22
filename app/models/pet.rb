class Pet < ApplicationRecord
  belongs_to :shelter
  has_many :favorites
  has_many :favoriters, through: :favorites, :source=> :adopter
  
  has_one :adoption
  has_one :adopter, through: :adoption
end
