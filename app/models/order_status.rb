class OrderStatus < ActiveRecord::Base
	has_many :order_items

	default_scope { where (acitve:true) }
end
