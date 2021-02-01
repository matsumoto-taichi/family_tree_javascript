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
```
$ mv app/views/trees/index.html.erb app/views/trees/index.html.erb.backup
```

### app/controllers/trees_controller.rb に追記
```
# GET /trees or /trees.json
def get_trees
  @trees = Tree.all
  render json: @trees
end
```

### config/routes.rb　にルーティング追記
```
get "/get_trees" => "trees#get_tree"

```

### app/views/trees/index.json.jbuilder 実装
```
json.array! @trees do |tree|
  json.depth tree.depth
  json.father_id tree.father_id
  json.name tree.name
end
```

### app/views/trees/index.html.erb 雑に実装
```
<body>
<input type="button" value="家系図取得" , id="btn">
<h2>家系図を表示</h2>
<hr>
<div id="content"></div>
</body>
<script>
    $("#btn").on('click', function () {
        let url = 'http://localhost:3000/trees.json';
        $.getJSON(url, function (data) {

            //第0世代取得
            let data0 = data.filter(e => e['depth'] == 0);
            //第1世代取得
            let data1 = data.filter(e => e['depth'] == 1);
            //第2世代取得
            let data2 = data.filter(e => e['depth'] == 2);

            //第0世代表示
            $("#content").html("<p>" + data0[0]['name'] + "</p>");
            //改行追記
            $("#content").append("<br>");

            //第1世代表示
            $("#content").append("<p>");
            data1.map(e => $("#content").append(e['name'] + '　'));
            $("#content").append("</p>");
            //改行追記
            $("#content").append("<br>");

            //第2世代表示
            $("#content").append("<p>");
            data2.map(e => $("#content").append(e['name'] + '　'));
            $("#content").append("</p>");
            //改行追記
            $("#content").append("<br>");
        })
    });
</script>
```

### app/views/layout/application.html.erb head内に追記
```
<script
      src="https://code.jquery.com/jquery-3.5.1.min.js"
      integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
      crossorigin="anonymous">
    </script>

```
