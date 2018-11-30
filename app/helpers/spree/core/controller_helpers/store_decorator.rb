Spree::Core::ControllerHelpers::Store.class_eval do
    def current_store
      return @current_store if @current_store.present?
      @current_store ||= Spree::Store.find_by_id(session[:current_store_id]) if session[:current_store_id].present?
      if @current_store.present?
      	@current_store
      else
      	@current_store ||= Spree::Store.current(request.env['SERVER_NAME'])
      end
    end
end