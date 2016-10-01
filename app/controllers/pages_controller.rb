class PagesController < ApplicationController
  def index
  end

  def home
  end

  def profile
    # Catch the user_id from the URL
    @user_id = params[:id]

    # Use the user_id from URL to display the full name of the user
    @user_full_name = User.find(@user_id)
  end

  def explore
  end
end
