class AuthenticationController < ApplicationController
  def facebook 
     redirect_to '/auth/facebook'
  end
end