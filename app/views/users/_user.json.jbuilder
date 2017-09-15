json.extract! user, :id, :Username, :encrypted_password, :Email_Address, :Address_1, :Address_2, :Town, :county, :postcode, :created_at, :updated_at
json.url user_url(user, format: :json)
