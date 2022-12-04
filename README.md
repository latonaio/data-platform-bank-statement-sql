# data-platform-bank-statement-sql 

data-platform-bank-statement-sql は、データ連携基盤において、電子銀行報告書データを維持管理するSQLテーブルを作成するためのレポジトリです。  

## 前提条件  
data-platform-bank-statement-sql は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.xxx.com/api/API_XXXXX_XXX/overview  

## sqlの設定ファイル

data-platform-bank-statement-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。    

* data-platform-bank-statement-sql-header-data.sql（データ連携基盤 電子銀行報告書 - ヘッダデータ）
* data-platform-bank-statement-sql-item-data.sql（データ連携基盤 電子銀行報告書 - 明細データ）  

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法

MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。  