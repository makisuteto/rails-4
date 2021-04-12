class ItemsController < ApplicationController
  # ***** 次を追記 *****
  before_action :authenticate_user!, except: :index

  def index
    # 追記
    @items = Item.all
  end

  def new
    # 追記
    @item = Item.new
  end

  def create
    # ***** 次を修正 *****
    current_user.items.create!(item_params)
  end

  private

  def item_params
    params.require(:item).permit(:name, :price)
  end

end
