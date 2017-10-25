class Sale < ApplicationRecord
	validates :cod, uniqueness: true
	validates :detail, presence: true
	validates :category, inclusion: { in: [1, 2, 3, 4, 5] }
	validates_numericality_of :value, greather_than_or_equal_to: 0, only_integer: true
	validates_numericality_of :discount, less_than_or_equal_to: 40, greather_than_or_equal_to: 0, only_integer: true
end
