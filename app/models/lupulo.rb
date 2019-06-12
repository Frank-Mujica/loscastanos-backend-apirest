class Lupulo < ApplicationRecord
    validates :name, presence:true
    validates :origin, presence:true
    validates :description, presence:true
    validates :stock, presence:true
    validates :lupulo_type, presence:true
    validates :cone_size, presence:true
    validates :cone_shape, presence:true
    validates :alpha_acids, presence:true
    validates :beta_acids, presence:true
    validates :cohumulones, presence:true
    validates :columbus, presence:true
    validates :storage_index, presence:true
    validates :humidity, presence:true
    validates :uses, presence:true
    validates :beer_type, presence:true
    validates :grams, presence:true
    validates :price, presence: true
    validates :image, presence: true
end
