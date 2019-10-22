class Adopter < ApplicationRecord
has_secure_password

has_many :favorites
has_many :favorite_pets, through: :favorites, :source => :pet

has_many :adoptions
has_many :adopted_pets, through: :adoptions, :source => :pet
end
