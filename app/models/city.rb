class City < ApplicationRecord
  has_many :dogs
  has_many :dogsits
  has_many :strolls
end
