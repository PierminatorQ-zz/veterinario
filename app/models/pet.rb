class Pet < ApplicationRecord
  belongs_to :client

  has_many :pet_histories

  def to_s
    name
  end

  def total_visit
    pet_histories.count
  end

  #metodos index.pet
  def prom_weight
    if pet_histories.length > 0
      promw= pet_histories.sum(:weight)
      promw/pet_histories.length
    else
      "0"
    end
  end

  def prom_height
    if pet_histories.length > 0
      promh= pet_histories.sum(:height)
      promh/pet_histories.length
    else
      "0"
    end
  end

  def max_weight
    if pet_histories.length > 0
      wh= pet_histories.pluck :weight
      wh.max
    else
      "0"
    end
    
  end

  def max_height
    if pet_histories.length > 0
      hh = pet_histories.pluck :height
      hh.max
    else
      "0"
    end
    
  end


end
