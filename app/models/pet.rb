class Pet < ApplicationRecord
  #relationships between other models
  belongs_to :client
  has_many :pet_histories
  #validate a unique name for pets
  validates :name, uniqueness: true
  
  #define behavior to_s 
  def to_s
    name
  end
  
  #count how many times a pet has visited the doctor and show index.html:pet
  def total_visit
    pet_histories.count
  end

  #methods for index:pet

    #show average weight 
    def prom_weight
      if pet_histories.length > 0
        promw= pet_histories.sum(:weight)
        promw/pet_histories.length
      else
        "0"
      end
    end

    #show average height 
    def prom_height
      if pet_histories.length > 0
        promh= pet_histories.sum(:height)
        promh/pet_histories.length
      else
        "0"
      end
    end

    #show max weight 
    def max_weight
      if pet_histories.length > 0
        wh= pet_histories.pluck :weight
        wh.max
      else
        "0"
      end
      
    end

    #show average height 
    def max_height
      if pet_histories.length > 0
        hh = pet_histories.pluck :height
        hh.max
      else
        "0"
      end
      
    end


end
