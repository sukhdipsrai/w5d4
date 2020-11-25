class Course < ApplicationRecord
    has_many :enrollment
    has_many :student
end
