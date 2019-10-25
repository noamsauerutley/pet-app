class Adopter < ApplicationRecord
has_secure_password
mount_uploader :avatar, AvatarUploader
validates :name, presence: true, uniqueness: true

has_many :favorites
has_many :favorite_pets, through: :favorites, :source => :pet

has_many :adoptions
has_many :adopted_pets, through: :adoptions, :source => :pet

    def local_shelters
        Shelter.all.select do |shelter|
            shelter.zip == self.zip
        end
    end

    def local_pets
        local_pets = []
        if local_shelters.length > 0
            local_shelters.each do |shelter|
                shelter.pets.all.each do |pet|
                local_pets << pet
                end
            end
        end
        local_pets.flatten
    end

end
