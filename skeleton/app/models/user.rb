class User < ApplicationRecord
    has_many :registrations,
        primary_key: :id,
        foreign_key: :student_id,
        class_name: :Enrollment
    
    has_many :classes, 
        through: :registrations,
        source: :Course
    # house.rb -> id
    # has_many( :residents, {
    #     primary_key: :id,   # The primary key for House
    #     foreign_key: :house_id, # The foreign key that Person contains
    #     class_name: :Person # The class to instantiate.
    # } )

end
