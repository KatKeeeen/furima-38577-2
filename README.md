# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| family_name        | string | null: false               |
| first_name         | string | null: false               |
| family_name_kana   | string | null: false               |
| first_name_kana    | string | null: false               |
| birth_day          | date   | null: false               |

### Association

- has_many :products
- has_one  :destination


## destination テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| post_code     | string     | null: false                    |
| prefecture    | integer    | null: false                    |
| city          | string     | null: false                    |
| address       | string     | null: false                    |
| building_name | string     | null: false                    |
| phone_number  | string     | null: false                    |
| user_id       | references | null: false, foreign_key: true |


### Association

- belongs_to          :user



## product テーブル

| Column          | Type      | Options                        |
| --------------- | --------- | ------------------------------ |
| name            | string    | null: false                    |
| price           | integer   | null: false                    |
| description     | text      | null: false                    |
| category        | integer   | null: false                    |
| status          | string    | null: false                    |
| shopping_charge | string    | null: false                    |
| prefecture      | integer   | null: false                    |
| shopping_days   | string    | null: false                    |
| user_id         | reference | null: false, foreign_key: true |

### Association

- belongs_to             :user

