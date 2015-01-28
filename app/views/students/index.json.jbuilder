json.array!(@students) do |student|
  json.extract! student, :id, :first_name, :last_name, :current_rank, :start_date
  json.url student_url(student, format: :json)
end
