json.array!(@user_interactions) do |user_interaction|
  json.extract! user_interaction, :id, :owner
  json.url user_interaction_url(user_interaction, format: :json)
end
