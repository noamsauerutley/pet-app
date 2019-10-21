class Pet < ApplicationRecord
  belongs_to :shelter
  has_many :favorites
end
