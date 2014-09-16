json.array!(@projects) do |project|
  json.extract! project, :id, :name, :email, :phone, :description, :budget, :timeframe, :zip
  json.url project_url(project, format: :json)
end
