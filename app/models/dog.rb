class Dog < ApplicationRecord
  has_many :strolls , dependent: :destroy
  has_many :dogsits, through: :strolls
end
