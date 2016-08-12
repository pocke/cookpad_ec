class PortalController < ApplicationController
  def show
    @categories = Category.all
    @recommended = Item.recommended.limit(5)
  end
end
