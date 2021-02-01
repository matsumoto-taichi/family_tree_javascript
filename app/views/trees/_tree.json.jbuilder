json.extract! tree, :id, :depth, :father_id, :name, :gender, :created_at, :updated_at
json.url tree_url(tree, format: :json)
