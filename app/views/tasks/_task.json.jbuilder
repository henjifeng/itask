json.extract! task, :id, :title, :text, :created_at, :updated_at
json.url task_url(task, format: :json)
