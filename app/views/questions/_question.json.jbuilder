json.extract! question, :id, :title, :question_bank_id, :created_at, :updated_at
json.url question_url(question, format: :json)
