class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET /items
  # GET /items.json
  def index
    @items = Item.all
    if category_id = params[:category_id]
      @items = @items.where(category_id: category_id)
    end
  end

  # GET /items/1
  # GET /items/1.json
  def show
  end


  def recommended
    @items = Item.recommended
    render :index
  end

  def uncategorized
    @items = Item.uncategorized
    render :index
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end
end
