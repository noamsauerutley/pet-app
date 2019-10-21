class Adopter < ApplicationRecord
has_many :favorites
has_many :adoptions
has_many :pets, through: :favorites

end
