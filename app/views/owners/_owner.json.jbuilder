# json.extract! owner, :id, :created_at, :updated_at
# json.url owner_url(owner, format: :json)
json.id owner.id
json.name owner.name
json.email owner.email
json.phone_number owner.phone_number
