json.extract! expense, :id, :date, :name, :amount, :store_id, :kind_id, :created_at, :updated_at
json.url expense_url(expense, format: :json)
