class Pet < ApplicationRecord
  belongs_to :shelter
  has_many :favorites
  has_many :adopters, through: :favorites
end
