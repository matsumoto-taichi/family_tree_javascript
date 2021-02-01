# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Tree.create(id: 0, depth: 0, father_id: 0, name:"山本太郎", gender: 1)
Tree.create(id: 1, depth: 1, father_id: 1, name:"山本二郎", gender: 1)
Tree.create(id: 2, depth: 1, father_id: 1, name:"山本三郎", gender: 1)
Tree.create(id: 3, depth: 2, father_id: 2, name:"山本四郎", gender: 1)
Tree.create(id: 4, depth: 2, father_id: 2, name:"山本五郎", gender: 1)
Tree.create(id: 5, depth: 2, father_id: 3, name:"山本六郎", gender: 1)
