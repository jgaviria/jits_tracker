json.array!(@checkins) do |checkin|
  json.extract! checkin, :id, :student_id
  json.url checkin_url(checkin, format: :json)
end
