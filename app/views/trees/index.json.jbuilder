json.array! @trees do |tree|
  json.depth tree.depth
  json.father_id tree.father_id
  json.name tree.name
end