json.extract! project, :id, :name, :description, :homepage, :is_public, :created_at, :updated_at
json.url project_url(project, format: :json)
