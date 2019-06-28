class PurchaseItem < ApplicationRecord
  belongs_to :purchase_order
  belongs_to :product
  validate :no_order
  validates :quantity, numericality: { greater_than: 0 }

  def no_order
  	product.try(:quantity).to_i >= quantity
  end
end
