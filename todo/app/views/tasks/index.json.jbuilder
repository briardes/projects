json.array!(@tasks) do |task|
  json.extract! task, :id, :title, :start_date, :due_date, :completed, :notes
  json.url task_url(task, format: :json)
end
