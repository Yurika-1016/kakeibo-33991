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

<!-- # URL
別途

# テスト用アカウント
メールアドレス：t@t
<br>パスワード：ttt111
<br>Basic認証 ユーザー名：admin
<br>Basic認証 パスワード：2222

# 利用方法
別途 -->


# 目指した問題解決
家計簿をつけることがめんどくさくて続かないユーザー（私含め）が簡単に。楽しく家計簿をつけることを目標にしました。
- 毎日の記入は最低限に（カテゴリーと金額のみ）
- 月ごと・年ごとの分析は、視覚的にわかりやすくし、楽しく続けられるように

# 洗い出した要件 
- ユーザー管理機能
- 支出登録機能
- 収入登録機能
- トップページ
- 月別家計簿一覧表示機能
- 月別家計簿分析機能
- 年別家計簿分析機能

<!-- # 実装した機能についてのGIFと説明

## タスク一覧ページの説明
![demo](https://gyazo.com/8eb034828f67fb014ca1cc94fba2128b/raw)
タスクを一覧表示できます
</br>検索機能・並び替え機能を使用できます。

## メンバースケジュールページの説明
![demo](https://gyazo.com/d13e62cdc617cd81762968adc42c5dac/raw)
チームメンバーの今日のスケジュールを表示できます
</br>今日の帰宅時間や今月の労働時間累計、今日行うタスクを表示できます。

## チャットページの説明
![demo](https://gyazo.com/a7ddbded36a03e7934ff81e258796849/raw)
チャットページです。

## マイページの説明
![demo](https://gyazo.com/e53ea8120317641e069ec5eb942763bd/raw)
スケジュール上に自分の担当のタスクを表示できます。
<br>今日の帰宅時間の登録や労働時間も登録できます。

# データベース設計
![demo](https://gyazo.com/b991eb4d3aca96e5c770c925b0e7bb6a/raw)

# ローカルでの動作方法
https://github.com/Yurika-1016/team-task-app-33991.git
<br>ruby version '2.6.5'
<br>Ruby on Rails -->

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


