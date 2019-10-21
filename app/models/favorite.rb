class Favorite < ApplicationRecord
  belongs_to :adopter
  belongs_to :pet

end
