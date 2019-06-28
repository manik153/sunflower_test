class Product < ApplicationRecord
	validates :name, presence: true
	validates :from_date, presence: true
	validates :to_date, presence: true
	validates :quantity, numericality: { greater_than: 0 }
	has_many :purchase_items

	def purchased_quantity
		purchase_items.pluck(:quantity).sum
	end

	def remaining_quantity
		quantity - purchased_quantity
	end
end
