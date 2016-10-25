json.extract! offer, :id, :identifier, :start_date, :end_date, :offer_type, :active, :priority, :durration_in_months, :created_at, :updated_at
json.url offer_url(offer, format: :json)