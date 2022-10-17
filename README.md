<!-- テーブル設計 -->


<!-- USERSテーブル -->

| Column             | Type   | Options                      |
| ------------------ | ------ | ---------------------------- |
| nickname           | string | null: false,unique_key: true |
| email              | string | null: false                  |
| encrypted_password | string | null: false                  |
  
<!-- Association -->

- has_many :comments
- has_many :lists


<!-- commentsテーブル -->

| Colum   | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | text       | null: false                    |
| list    | references | null: false, foreign_key: true |
| user    | references | null: false, foreign_key: true |

<!-- Association -->

- belongs_to :user
- belongs_to :list


<!-- listsテーブル -->

| Colum  | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| title  | string     | null: false                    |
| detail | text       | null: false                    |
| user   | references | null: false, foreign_key: true |

<!-- Association -->

- belongs_to :user
- has_many :comments
