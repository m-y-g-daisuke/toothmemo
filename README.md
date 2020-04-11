# README
歯磨き記録帳　動物用の歯磨き記録のメモアプリケーション

* 概要
ユーザー登録
ユーザーは動物を複数登録することができる
歯磨きの記録の作成、閲覧、編集

* 本番環境
heroku


* 制作背景
ペットの歯磨きを習得したい全ての飼い主および、歯磨きを指導する獣医師・看護師向け。
日々の歯磨きを記録することでモチベーションを維持し、歯磨きにをしていて不明な点の記録を可能にする。
歯磨きのし忘れを防ぐ。
歯磨きの指導者は記録を閲覧することで、飼い主が抱える不安、疑問を知ることができ、効果的な指導を行うことができる。

* DEMO

* 工夫したポイント
トップページでは最新の記録を見ることができる。
歯磨きに使用した道具や磨けた場所はチェックボックス で選ぶことができる。

* 使用技術
ruby_2.5.1_
ruby on rails
haml,scss
bootstrap
github
heroku  https://hamigaki.herokuapp.com/


* 課題・今後実装していく機能
スマートフォンで記入・閲覧がしやすいようアプリケーション化
管理者権限の付与
可愛い雰囲気を出していく
動画の投稿
グラフAPIを導入し、1週間でどんな歯磨き方法を何回行ったのかを表示


* DB設計

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|
|email|string|null: false|
|password|string|null: false|
|role|string|null: false|

### Association
- has_many :animals

## animalsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|birth|date|default ""|
|sex|integer|default ""|
|breed_id|references|default "", foreign_key: true|
|user_id|references|null:false, foreign_key: true|

### Association
- has_many :posts
- has_many :breeds
- belongs_to :user

## breedsテーブル

|Column|Type|Options|
|------|----|-------|
|breed|string|null:false, unique: true|

### Association
- belings_to :animal

## postsテーブル

|Column|Type|Options|
|------|----|-------|
|datetime|recorded_at|null: false|
|content|text||
|image|text||
|movie|text||
|animal_id|references|null:false, foreign_key: true|
|tool_id|references|foreign_key: true|
|template_id|references|foreign_key: true|

### Association
- has_many :posts_tools
- has_many :posts_templates
- has_many :tools, through: :posts_tools
- has_many :templates, through: :posts_templates
- belongs_to :animal

## posts_toolsテーブル

|Column|Type|Options|
|------|----|-------|
|post_id|references|null: false, foreign_key: true|
|tool_id|references|null: false, foreign_key: true|

### Association
- belongs_to :post
- belongs_to :tool

## toolsテーブル

|Column|Type|Options|
|------|----|-------|
|tool|string|null:false, unique: true|

### Association
- has_many :posts_tools
- has_many :posts, through: :posts_tools


## posts_templatesテーブル

|Column|Type|Options|
|------|----|-------|
|post_id|references|null: false, foreign_key: true|
|template_id|references|null: false, foreign_key: true|

### Association
- belongs_to :post
- belongs_to :template

## temlpatesテーブル

|Column|Type|Options|
|------|----|-------|
|template|string|null:false, unique: true|

### Association
- has_many :posts_templates
- has_many :posts, through: :posts_templates

