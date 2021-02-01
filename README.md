# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
  - rails5.2.2
  - ruby2.5.3

* System dependencies

* Configuration

* Database creation
  - rails db:create

* Database initialization
  - rails db:migrate


### このアプリの作成手順

### Scaffoldでアプリ作成
```
rails _5.2.2_ new family_tree --database=mysql --skip-bundle --skip-test
rails g scaffold FamilyTree depth:integer father_id:integer name:string gender:integer
rails db:create
rails db:migrate
```

### テストデータ用意
*db/seeds.rb*
```
Tree.create(id: 0, depth: 0, father_id: 0, name:"山本太郎", gender: 1)
Tree.create(id: 1, depth: 1, father_id: 1, name:"山本二郎", gender: 1)
Tree.create(id: 2, depth: 1, father_id: 1, name:"山本三郎", gender: 1)
Tree.create(id: 3, depth: 2, father_id: 2, name:"山本四郎", gender: 1)
Tree.create(id: 4, depth: 2, father_id: 2, name:"山本五郎", gender: 1)
Tree.create(id: 5, depth: 2, father_id: 3, name:"山本六郎", gender: 1)
```
  
### データの確認
```
$ rails db:seed
$ rails c
Loading development environment (Rails 5.2.4.4)
irb(main):001:0> Tree.find(0)
```

### app/views/trees/index.html.erb バックアップ作成
### app/controllers/trees_controller.rb 修正
### app/views/trees/index.json.jbuilder 実装
### app/views/trees/index.html.erb 実装
### app/views/layout/application.html.erb 修正
### app/views/trees/index.html.erb 実装
