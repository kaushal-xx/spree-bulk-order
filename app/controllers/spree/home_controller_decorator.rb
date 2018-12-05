Spree::HomeController.class_eval do

	def index
	  if session[:current_store_id].blank?
	  	redirect_to '/store'
	  else
	      @searcher = build_searcher(params.merge(include_images: true))
	      @products = @searcher.retrieve_products.joins(:stores).where("spree_stores.id =?",current_store.id)
	      @products = @products.includes(:possible_promotions) if @products.respond_to?(:includes)
	      @taxonomies = Spree::Taxonomy.includes(root: :children)
	  end
	end

	def setup_current_store
		if params[:store_id].present?
			store = Spree::Store.find_by_id params[:store_id]
			session[:current_store_id] = store.id if store.present?
		end
		redirect_to root_path
	end

	def store
	end
end