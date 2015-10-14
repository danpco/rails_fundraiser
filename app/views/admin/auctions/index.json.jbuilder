json.array!(@auctions) do |auction|
  json.extract! auction, :id, :title, :begins, :ends, :user_id
  json.url auction_url(auction, format: :json)
end
