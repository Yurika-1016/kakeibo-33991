# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# アプリケーション名
家計簿アプリ

# アプリケーション概要
家計簿をつけることができるアプリです。
<br>毎月の支出・収入の記録ができます。
<br>支出・収入の登録は最低限に、
<br>月ごと・日ごとの分析は視覚的にわかりやすくがモットーです。

# URL
https://kakeibo-33991.herokuapp.com/

# テスト用アカウント
メールアドレス：t@t
<br>パスワード：ttt111
<br>Basic認証 ユーザー名：admin
<br>Basic認証 パスワード：2222

# 利用方法
- 上記アカウントにてログインしてください（このアプリは複数人数で利用する仕様にはなっていません）
- ログイン後、支出・収入を登録してください
- トップページで「家計簿を確認する」ボタンを押すと、今まで登録した支出・収入を確認できます
- 月間分析で今月と先月分の支出・収入の分析を確認できます
- 年間分析で今年と昨年分の支出・収入の分析を確認できます

# 目指した問題解決
家計簿をつけることがめんどくさくて続かないユーザー（私のような）が簡単に。<br>
楽しく家計簿をつけることを目標にしました。
- 毎日の記入は最低限に（カテゴリーと金額のみ）
- 月ごと・年ごとの分析は、視覚的にわかりやすくし、楽しく続けられるように

# 洗い出した要件 
- ユーザー管理機能
- 支出登録機能
- 収入登録機能
- トップページ
- 家計簿一覧表示機能
- 月別家計簿分析機能
- 年別家計簿分析機能

# 実装した機能についてのGIFと説明

## 家計簿一覧ページの説明
![demo](https://gyazo.com/1ebc0e1f3a9b286cf8def345e485a5b7/raw)
過去登録した支出・収入を一覧表示できます

## 月間分析ページの説明
![demo](https://gyazo.com/c449d00b92082682df8e4e1b1881c4d8/raw)
月間の日ごとの支出分析とカテゴリー別の支出分析ができます（今月分と先月分）
</br>食費、交際費等カテゴリー別の支出と月間総支出と総収入を確認できます

## 月間分析ページの説明
月間分析ページの年間版です（今年分と昨年分）


# データベース設計
![demo](https://gyazo.com/a631615f3e30e90d208e53fca13ce334/raw)

# ローカルでの動作方法
https://github.com/Yurika-1016/kakeibo-33991.git
<br>ruby version '2.6.5'
<br>Ruby on Rails

## Usersテーブル
|      column      |      type       |                 option                    |
| ---------------- | --------------- | ----------------------------------------- |
|     nickname     |     string      |               null:false                  |
|      email       |     string      |               null:false                  |
|encrypted_password|     string      |               null:false                  |
### Association
- has_many :incomes
- has_many :spendings

## Incomesテーブル
|           column           |      type       |                                option                                       |
| -------------------------- | --------------- | --------------------------------------------------------------------------- |
|     income_category_id     |     integer     |                    null:false, numericality: { other_than: 0 }              |
|          price             |     integer     |null:false ,numericality: { only_integer: true, greater_than_or_equal_to: 0 }|
|           text             |     string      |                                                                             |
|          user_id           |    references   |                       null:false, foreign_keys: true                        |
### Association
- belongs_to :user

## Spendingsテーブル
|           column           |      type       |                                 option                                      |
| -------------------------- | --------------- | --------------------------------------------------------------------------- |
|    spending_category_id    |     integer     |                    null:false, numericality: { other_than: 0 }              |
|          price             |     integer     |null:false ,numericality: { only_integer: true, greater_than_or_equal_to: 0 }|
|           text             |     string      |                                                                             |
|          user_id           |    references   |                       null:false, foreign_keys: true                        |
### Association
- belongs_to :user


