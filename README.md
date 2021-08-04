# Minder (minder)
オリジナルアプリのアイデアを、投稿・共有・閲覧することができるSNS型アプリケーション

URL: https://minder01.herokuapp.com/ <br>


テスト用アカウント(ご自由にお使いください)<br>
ユーザーID: test<br>
パスワード: 123456


# 概要

このアプリはプログラミングスクールの生徒が、オリジナルアプリのアイデアに行き詰まった際、スクールの違いや現時点でのスキルの状況に関係なく、気軽に<b><u>マインドを共有することを目的としたアプリケーション</u></b>です。<br>アイデア集やメモ書きとして活用し、お互いのアイデアを出し合うことができます。<br>大人数で自由に意見を述べ合い、一人では想像もつかない新たな発想が生まれることも期待できます。


# 課題
| 課題                                            | 課題解決                                                              |
| -----------------------------------------------| ---------------------------------------------------------------------|
| オリジナルアプリのアイデアが出てこない                | 投稿一覧を見ることで、いろんなアイデアに触れる ことができる                   |
| スクールが違う生徒や同期以外の生徒のアイデアも知りたい   | 投稿一覧表示機能は、ログインしていなくてもマインド一覧を確認することができる     |
| 他の人からの評価も知りたい                          | マインドキャッチ機能によって、別のユーザーがアイデアを共有したかどうかがわかる   |
| マインドアップに必要な教材を知りたい                  | 今までスクールで紹介された書籍の一覧を見ることができる                       |

# 機能一覧
| 機能                           | 機能詳細                                   |
| ------------------------------|-------------------------------------------|
| ユーザー管理機能                 | ユーザーの新規登録、ログイン、ログアウトが可能   |
| マインド一覧表示機能 (非ログイン可) | マインドの一覧表示が可能                     |
| マインド詳細機能                 | マインドの詳細な情報の閲覧が可能               |
| マインド投稿機能                 | マインドの作成が可能                         |
| マインド編集機能                 | 自身が投稿したマインド編集が可能               |
| マインド削除機能                 | 自身が投稿したマインドの削除が可能             |

## マインドキャッチ機能
| 機能                       | 機能詳細                                   |
| --------------------------|-------------------------------------------|
| マインドキャッチ追加機能      | 自他問わずマインドキャッチすることが可能         |
| マインドキャッチ削除機能      | 既にマインドキャッチの場合、削除することが可能    |

## マイページ機能
| 機能                       | 機能詳細                                   |
| ---------------------------|-------------------------------------------|
| マイページ機能               | 自身のマインドの閲覧が可能                     |


# 使用方法

## アカウント作成
ヘッダーの新規登録からアカウント作成画面へ遷移します。

<img src="＃" width="100%">

## ログイン
既にアカウントをお持ちの場合、ヘッダーのログインボタンからログイン画面へ遷移します。
ログインにはアカウント作成時のユーザー名とパスワードが必要です。

<img src="＃" width="100%">

## ログアウト
ログイン状態の場合、ヘッダーのログアウトボタンでログアウトします。

<img src="＃" width="100%">


## マインドの一覧
公開されているマインドとマインド投稿者が一覧できます。

<img src="＃" width="100%">

## マインドの詳細
マインド一覧画面からマインドを一つクリックすると詳細画面に遷移します。<br>
マインド内容、マインド投稿者、マインド投稿日時、何人にマインドキャッチされているかを確認できます。

<img src="＃" width="100%">

## マインドの投稿
ヘッダーのマインドセットボタンを押すとマインドセット画面に遷移します。<br>
マインドの内容入力をして、マインドセットボタンを押すとマインドが投稿されます。

<img src="＃" width="100%">

## マインドの編集
マインド詳細画面から、マインド投稿者の場合、編集ボタンを押すことでマインド編集ページへ遷移します。<br>
マインドの内容を変更し、保存のボタンを押してください。メッセージが表示され、マインド内容の変更が保存されます。

<img src="＃" width="100%">

## マインドの削除
マインド詳細画面から、マインド投稿者の場合、削除ボタンを押すことでマインドが削除され、メッセージが表示されます。<br>

<img src="＃" width="100%">


## マインドキャッチ機能
マインドの詳細画面の左下「マインドキャッチ！」をクリックすることでマインドキャッチすることができます。<br>
もしマインドキャッチを外す場合は、もう１度クリックしてください。

<img src="＃" width="100%">

## マイページ
ヘッダーの自身の名前を押すことでマイページに遷移します。<br>
マイページでは自身がセットしたマインドを閲覧できます。

<img src="＃" width="100%">

# 開発環境
- VSCode
- Ruby 2.７.２
- Rails 6.0.0
- gem 3.1.4
- MySQL2 0.5.3

# 本番環境
- Heroke

# ローカル環境での動作環境
% git clone https://github.com/akkyflair/minder.git<br>
% cd minder<br>
% bundle install<br>
% rails db:create<br>
% rails db:migrate<br>
% rails s<br>
http://localhost:3000 にアクセス


# データベース設計

## Userテーブル

| Column                   | Type          | Option                         |
|--------------------------|---------------|--------------------------------|
| name                     | string        | null: false unique: true       |
| encrypted_password       | string        | null: false unique: true       |

### Association
- has_many :posts
- has_many :mindmatches

********************************************************************************

## Postテーブル

| Column                   | Type          | Option                         |
|--------------------------|---------------|--------------------------------|
| user_id                  | integer       | null: false, foreign_key: true |
| content                  | text          | null: false,                   |

### Association
- belongs_to :user
- has_many   :mindmatches

********************************************************************************

## Mindmatchテーブル

| Column                   | Type          | Option                          |
|--------------------------|---------------|---------------------------------|
| user_id                  | integer       | null: false, foreign_key: true  |
| post_id                  | integer       | null: false, foreign_key: true  |

### Association
- belongs_to :user
- belongs_to :post

********************************************************************************