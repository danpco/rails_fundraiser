json.array!(@items) do |item|
  json.extract! item, :id, :title, :description, :start_price, :buy_now, :sold, :auction_id
  json.url item_url(item, format: :json)
end
