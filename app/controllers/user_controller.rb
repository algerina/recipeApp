class UserController < ApplicationController
  def index
    @user = User.new
  end
end
