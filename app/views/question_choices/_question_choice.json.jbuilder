json.extract! question_choice, :id, :question_item_id, :content, :value, :correct, :created_at, :updated_at
json.url question_choice_url(question_choice, format: :json)
