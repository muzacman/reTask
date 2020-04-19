json.extract! task, :id, :name, :text_build, :link, :type, :order_number, :created_at, :updated_at
json.url task_url(task, format: :json)
