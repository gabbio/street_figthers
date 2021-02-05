class Fighter < ApplicationRecord
    validates :name, :energy, :strength, presence: true
    validates :stamina, presence: true, allow_nil: false
    validates :avatar, presence: true, allow_nil: true
    validates :energy, :strength, :stamina, numericality: { only_integer: true }
    validates :energy, numericality: { greater_than_or_equal_to: 75, less_than_or_equal_to: 100 }
    validates :strength, numericality: { greater_than_or_equal_to: 5, less_than_or_equal_to: 15 }
    validates :stamina, numericality: { greater_than_or_equal_to: 50, less_than_or_equal_to: 100 }
end
