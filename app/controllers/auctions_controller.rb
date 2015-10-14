# public view of auctions
class AuctionsController < ApplicationController
  before_action :set_auction, only: [:show]

  # GET /auctions/1
  # GET /auctions/1.json
  def show
  end
  
  private
    def set_auction
      @auction = Auction.find(params[:id])
    end
end
