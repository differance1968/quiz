json.extract! question_item, :id, :question_id, :content, :created_at, :updated_at
json.url question_item_url(question_item, format: :json)
