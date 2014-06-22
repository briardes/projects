json.array!(@contacts) do |contact|
  json.extract! contact, :id, :last_name, :first_name, :phone_number
  json.url contact_url(contact, format: :json)
end
