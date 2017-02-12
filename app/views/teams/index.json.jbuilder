json.array! @teams.each do |team|
  json.id team.id
  json.state team.state
  json.creature team.creature
  json.sport team.sport
end