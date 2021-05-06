class Stroll < ApplicationRecord
 belongs_to :dogsit, optional: true
 belongs_to :dog, optional: true
end
