json.extract! place, :id, :name, :email, :logo_url, :opening, :closing, :phone_number, :introduce, :price_from, :price_to, :address, :avg_rating, :created_at, :updated_at
json.url place_url(place, format: :json)
