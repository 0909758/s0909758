class PagesController < ApplicationController
  def index
  end

  def home
  end

  def profile
    # Catch the user_id from the URL
    $profile = params[:id]

    # Use the user_id from URL to display the full name of the user on the profile page
    @user_full_name = User.find($profile)

    @post = Post.new

    @posts = Post.where(profile_id: $profile).order(created_at: :desc)

  end

  def explore
  end
end
