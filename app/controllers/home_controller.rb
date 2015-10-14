class HomeController < ApplicationController
  def index
    @auctions = Auction.all
    if signed_in?
      @your_auctions = current_user.auctions
    end
  end
end
