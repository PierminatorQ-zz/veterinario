class Client < ApplicationRecord
    #relationships between other models
    has_many :pets
    #receive nested attributes for pets
    accepts_nested_attributes_for :pets
    #validate a unique name for clients
    validates :name, uniqueness: true
    
    #convert object view into a name
    def to_s
        name
    end
    #count pets quantity and show them at index.html:client
    def total_pets
        pets.count
    end

end
