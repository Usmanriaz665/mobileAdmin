json.extract! order, :id, :name, :price, :amount_paid, :amount_balance, :discription, :accessories_id, :mobile_id, :created_at, :updated_at
json.url order_url(order, format: :json)
