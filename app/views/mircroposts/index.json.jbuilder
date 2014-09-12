json.array!(@mircroposts) do |mircropost|
  json.extract! mircropost, :id, :content, :user_id
  json.url mircropost_url(mircropost, format: :json)
end
