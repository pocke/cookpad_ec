class PortalController < ApplicationController
  def show
    @categories = Category.all
    @recommended = Item.recommended.randomize.limit(5)
  end
end
