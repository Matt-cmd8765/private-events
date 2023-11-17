class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @events = Event.all
    @user = current_user
  end
end
