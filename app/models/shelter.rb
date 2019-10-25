class Shelter < ApplicationRecord
has_many :pets
mount_uploader :avatar, AvatarUploader
end
