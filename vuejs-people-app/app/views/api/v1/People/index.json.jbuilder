json.array! @people.each do |person|
  json.id person.id
  json.name person.name
end