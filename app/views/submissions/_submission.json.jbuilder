json.extract! submission, :id, :user_id, :question_id, :answer_id, :time_taken, :created_at, :updated_at
json.url submission_url(submission, format: :json)
