# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation
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
|datetime|datetime|null: false|
|content|text||
|image|text||
|movie|text||
|animal_id|references|null:false, foreign_key: true|
|method_id|references|foreign_key: true|
|template_id|references|foreign_key: true|

### Association
- has_many :posts_methods
- has_many :posts_templates
- has_many :methods, through: :posts_methods
- has_many :templates, through: :posts_templates
- belongs_to :animal

## posts_methodsテーブル

|Column|Type|Options|
|------|----|-------|
|post_id|references|null: false, foreign_key: true|
|method_id|references|null: false, foreign_key: true|

### Association
- belongs_to :post
- belongs_to :method

## methodsテーブル

|Column|Type|Options|
|------|----|-------|
|method|string|null:false, unique: true|

### Association
- has_many :posts_methods
- has_many :posts, through: :posts_methods


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

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# toothmemo
