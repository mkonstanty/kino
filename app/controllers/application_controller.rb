# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
 # helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => '8076d376d09a948d809c31d1c593de15'
#  @@usingactivescaffold = false
#def self.usingactivescaffold
#  @@usingactivescaffold = true
#end
#
#def usingactivescaffold
#  @@usingactivescaffold
#end

end
