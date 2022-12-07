class Power < ApplicationRecord
    has_many :hero_powers
    has_many :powers, through: :hero_powers

    validates :description, length: {minimum: 20}
end
