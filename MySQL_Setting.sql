【MySQLの設定】※貼り付け用
-----------------------------------------
- 管理者ユーザー名　　　　：root
- 管理者ユーザーパスワード：root ※Macの場合はパスワードなし
- 作成ユーザー名　　　　　：test_user
- 作成ユーザーパスワード　：test_pass
- 作成データベース名　　　：test_db
-----------------------------------------


▼MySQLのインストール確認
mysql --version


▼MySQLへのユーザーでのログイン
<Windowsユーザー>
mysql -u root -p
root
<Macユーザー>
mysql -u root


▼ユーザーの作成
（管理者ユーザーでMySQLにログインした状態で）
create user test_user@localhost identified by 'test_pass';


▼ユーザーの確認
（管理者ユーザーでMySQLにログインした状態で）
select Host,User from mysql.user;


▼データベース（スキーマ）の作成
（管理者ユーザーでMySQLにログインした状態で）
create database test_db default character set utf8;


▼データベース（スキーマ）の確認
（管理者ユーザーでMySQLにログインした状態で）
show databases;


▼ユーザーへのアクセス権限の付与
（管理者ユーザーでMySQLにログインした状態で）
grant all privileges on test_db.* to test_user@localhost;


▼ユーザーへのアクセス権限の確認
（管理者ユーザーでMySQLにログインした状態で）
show grants for test_user@localhost;


▼認証プラグインの変更
（管理者ユーザーでMySQLにログインした状態で）
alter user test_user@localhost identified with mysql_native_password by 'test_pass'; 


▼認証プラグインの確認
（管理者ユーザーでMySQLにログインした状態で）
select User,Plugin from mysql.user;


▼MySQLからのログアウト
（MySQLにログインした状態で）
quit