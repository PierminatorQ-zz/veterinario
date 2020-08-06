class Client < ApplicationRecord
    has_many :pets
    accepts_nested_attributes_for :pets
    
    def to_s
        name
    end

    def total_pets
        pets.count
    end


    def name_pet
        pets.includes(:pet_histories).references(:pet_histories).name
    end

    def height_pet
    end

    def weight_pet
    end

end
