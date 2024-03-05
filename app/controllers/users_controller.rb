class UsersController < ApplicationController
  def show
    @user = User.find_by!(username: params.fetch(:username))
  end

  def liked
    @user = User.find_by!(username: params.fetch(:username))
  end

  def liked_photos
    @user = User.find_by!(username: params.fetch(:username))
    @liked_photos = @user.liked_photos
  end
end
