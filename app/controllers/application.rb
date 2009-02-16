# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  include AuthenticatedSystem
  before_filter :load_root_categories

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => '84416f9e6fe2d162b36943da33b92d21'
  
  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password"). 
  # filter_parameter_logging :password
  
  private
  
  def load_root_categories
    @roots = Category.roots.find_all_by_is_visible(true)
  end
  
  def permission
    unless authorized?
      flash[:notice] = "You don't look like an admin to me"
      session[:back_url] = request.referer || root_path
      redirect_to session[:back_url]
    end
  end
end
