records = JSON.parse(File.read(Rails.root.join('vendor', 'user_teams.json')))
records.each do |record|
  User.create!(record)
end