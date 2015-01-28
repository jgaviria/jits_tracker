json.array!(@attendences) do |attendence|
  json.extract! attendence, :id, :signin
  json.url attendence_url(attendence, format: :json)
end
