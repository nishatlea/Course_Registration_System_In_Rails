json.extract! student, :id, :name, :fathers_name, :mothers_name, :email, :mobile, :image, :user_id, :created_at, :updated_at
json.url student_url(student, format: :json)
