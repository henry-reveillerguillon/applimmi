json.extract! photo, :id, :url, :title, :description, :place, :situation, :user_id, :tags, :camera, :aperture, :focal, :darkeningspeed, :created_at, :updated_at
json.url photo_url(photo, format: :json)
