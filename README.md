# README

## users テーブル
| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false |
| name               | string | null: false |
| profile            | text   | null: false |
| occupation         | text   | null: false |
| position           | text   | null: false |
<!-- Association 関係性 -->
- has_many :comments
- has_many :prototypes

## prototypes テーブル
| Column             | Type       | Options                       |
| ------------------ | ---------- | ----------------------------- |
| title              | string     | null: false                   |
| catch_copy         | text       | null: false                   |
| concept            | text       | null: false                   |
| user               | references | null: false, foreign_key: true|
<!-- Association 関係性 -->
- belongs_to :users
- has_many :comments
- has_one_attached :image


## comments テーブル
| Column             | Type       | Options                       |
| ------------------ | ---------- | ----------------------------- |
| content            | text       | null: false                   |
| prototype          | references | null: false, foreign_key: true|
| user               | references | null: false, foreign_key: true|
<!-- Association 関係性 -->
<!-- Association 関係性 -->
- belongs_to :users
- belongs_to :prototypes
