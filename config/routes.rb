Rails.application.routes.draw do
  resources :trees
  get "/get_trees" => "trees#get_tree"
end
