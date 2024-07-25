json.extract! todoz, :id, :name, :task, :created_at, :updated_at
json.url todoz_url(todoz, format: :json)
