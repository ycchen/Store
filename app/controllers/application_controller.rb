class ApplicationController < ActionController::Base
  include ControllerAuthentication
  protect_from_forgery
  
  # This is to enable those methods are avariable for all views
  helper_method :admin_authorize
  helper_method :admin?

  def lookup_order

      @order = Order.find_or_initialize_by_id(session[:order_id], :status => "unsubmitted")
      
      if @order.new_record?
        @order.save!
        session[:order_id] = @order.id
      end

  end

  private
  
  def admin_authorize
  	redirect_to root_url,
  	alert: "Not an admin and totally not cool" unless admin?
  end

  def admin?
  	if current_user
  		current_user.admin
  	else
  		false
  	end
  end

  
end
