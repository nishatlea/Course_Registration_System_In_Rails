json.extract! curriculum, :id, :coursename, :courseid, :description, :user_id, :created_at, :updated_at
json.url curriculum_url(curriculum, format: :json)
