Spree::TaxonsController.class_eval do

    def show
      @taxon = Spree::Taxon.friendly.find(params[:id])
      return unless @taxon

      @searcher = build_searcher(params.merge(taxon: @taxon.id, include_images: true))
      @products = @searcher.retrieve_products.joins(:stores).where("spree_stores.id =?",current_store.id)
      @taxonomies = Spree::Taxonomy.includes(root: :children)
    end
end