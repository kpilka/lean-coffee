json.array!(@sessions) do |session|
  json.extract! session, :id, :title, :slug, :team_id
  json.url session_url(session, format: :json)
end
