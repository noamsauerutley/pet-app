class Adopter < ApplicationRecord
has_secure_password
validates :name, presence: true, uniqueness: true

has_many :favorites
has_many :favorite_pets, through: :favorites, :source => :pet

has_many :adoptions
has_many :adopted_pets, through: :adoptions, :source => :pet
end
