class UserController < ApplicationController
  def show
    @all_users = User.all
  end
end
