class UsersController < ApplicationController
  def show
    # ***** 次を修正 *****
    @items = current_user.items
  end
end
