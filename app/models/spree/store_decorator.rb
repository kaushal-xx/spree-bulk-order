Spree::Store.class_eval do
	has_and_belongs_to_many :products
end