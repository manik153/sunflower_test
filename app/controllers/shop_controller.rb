class ShopController < ApplicationController
	def index
		@products = Product.all.where('from_date <= ? AND to_date >= ? AND quantity > 0',Time.now,Time.now)
	end

	def create_order
		if order_params.to_h.values.map(&:to_i).sum > 0
			po = PurchaseOrder.create(:purchase_date => Time.now)
			order_params.each do |product_id, quantity|
				PurchaseItem.create(
					purchase_order_id: po.id,
					product_id: product_id.to_i,
					quantity: quantity
				)
			end
			flash[:notice] = 'Order created'
		else
			flash[:notice] = 'Order atleast one item'
		end
		redirect_to :root
	end

	def order_list
	end

	private
	def order_params
		params.require(:order).permit!
	end
end
