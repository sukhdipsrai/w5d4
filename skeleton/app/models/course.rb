class Course < ApplicationRecord
    
    
    has_many :registrations,
    primary_key: :id,
    foreign_key: :course_id,
    class_name: :enrollment

    has_many :student, 
    through: :registrations, 
    source: :user

    belongs_to :instructor,
    primary_key: :id,
    foreign_key: :instructor_id,
    class_name: :User

    belongs_to :prerequisite,
        primary_key: :id,
        foreign_key: :prereq_id,
        class_name: :Course,
        optional: true

end
