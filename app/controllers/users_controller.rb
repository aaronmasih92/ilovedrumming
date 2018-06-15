class UsersController < ApplicationController
  before_action :authenticate_user!
  def profile
    
  end

  def destroy
  end
end
