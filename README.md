gitlab-helper
=============


GitLabのイケてないところをちょっとよくするChrome拡張 ver 0.3.5

# ダウンロードリンク

[ダウンロードリンク](https://github.com/nyangry/gitlab-helper/raw/master/gitlab-helper.crx)

# 何が変わるの?

- コメント欄で入力中 cmd + Enter で送信ボタンを押せる
- ワンクリックで +1 できる
- 絵文字パレットの追加
- LGTM画像のランダム取得
- デフォルトでoutdentされたコメントが開きっぱになるように
- 自動投稿される追加コミットログをコメント一覧から隠す
- GitLabのサイドメニューが大きすぎるのでサイズを縮小する
- その他細かい挙動の調整


# 更新履歴

- 1/28 
	- ver 0.2.2
		- 絵文字パレット追加
		- デフォルトでoutdentされたコメントが開きっぱになるように
		- 自動投稿される追加コミットログをコメント一覧から隠す
- 1/29
	- ver 0.2.3
		- パレット外の領域クリックでパレットを閉じる
 	- ver 0.2.4
	 	- bug fix
 	- ver 0.2.5
	 	- パレットの絵文字選択後、テキストエリアに自動でフォーカスする
 	- ver 0.2.6
	 	- 微調整
- 1/30
	- ver 0.2.7
		- 投稿済みのコメント編集欄でcmd+Enterが効かなかった問題を修正
- 2/12
	- ver 0.3.0
		- GitLab Version up に対応
			- セレクタ調整
		- 絵文字パレットの表示位置を固定
		- GitLabのバージョン・アップで出現するようになったサイドメニューのサイズ調整
			- [[PR] Close side-menu on Gitlab 7.7](https://github.com/nyangry/gitlab-helper/pull/1)
			- @syguer :+1:
		- LGTM画像のランダム取得→コメント欄挿入機能追加
	- ver 0.3.1
		- LGTM画像の挿入で、「Add Comment」ボタンのdisabledが解除されない不具合を修正

- 2/13
	- ver 0.3.2
		- ワンクリックで +1 できるボタンを追加
		- LGTM挿入ボタンの画像差し替え

- 2/15
	- ver 0.3.3
		- 自分が作成したMRの一覧へのリンクボタンを追加
			- [[PR] Add the button that shows MRs created by own](https://github.com/nyangry/gitlab-helper/pull/3)
			- @syguer :+1:

- 2/17
	- ver 0.3.4
		- いいねボタンでMRに対して +1 できるように

- 3/12
	 - ver 0.3.5
      - diff stas がデフォルトで開いたままになるように

- 4/17
  - ver 0.3.7
      - タイムライン等で表示される時間表記を詳細な日時表記へ変更する
      - マイルストーンがMR画面でわかりづらい位置に表示されている問題を改善


# 機能詳細

## コメント欄で入力中 cmd + Enter で送信ボタンを押せる


## ワンクリックで +1 できる
![Alt text](https://monosnap.com/file/EsIGBeHoFVbFBwKpmcW3p6PmhBCnjZ.png)

MRに対して `+1` されます！

クリックすると、即送信されます！ :+1:


## 絵文字パレットの追加
![Alt text](https://monosnap.com/file/mfcNZi2TRZsMJ5FFTAhFBoo4LoIzec.png)

- 絵文字の微妙なニュアンスが好き

- チートシートが糞すぎて使えないので作った
	- PDFからどうやってコピーするんだ・・

## LGTM画像のランダム取得
![Alt text](https://monosnap.com/file/MfcYsgxNeDpZJ56o4beSUth794SJvF.png)

赤枠部分をクリックすると自動でマークダウンが挿入されるよ :+1:


## デフォルトでoutdentされたコメントが開きっぱになるように
- なんで勝手に折りたたむの・・
- 自分で折りたたむのはできます！

## 自動投稿される追加コミットログをコメント一覧から隠す
- ぶっちゃけコミットログみればいいからいらない・・
- コンフリクト解消でメインブランチマージして大量のコミットログがコメント一覧をうめつくすのが許せない

## GitLabのサイドメニューが大きすぎるのでサイズを縮小する
[PR 参照](https://github.com/nyangry/gitlab-helper/pull/1)


## タイムライン等で表示される時間表記を詳細な時間表記へ変更する
- before
![Alt text](https://monosnap.com/file/OX6WtWWlUuR5TCMLjmLLeNJFpqGMmO.png)

- after
![Alt text](https://monosnap.com/file/PplLv6w0AaLupHpYlGKP2ZZ0HGjIhA.png)

GitLab側のスクリプトで60秒毎に更新される、スクロールによるローディング等で再度リセットされる
といった挙動があるので、一瞬元々の表示に戻りますが、10秒おきに詳細な時間表記へ変更するようにしています。
（GitLab側のイベントをフックできないので仕方なく）


## マイルストーンがMR画面でわかりづらい位置に表示されている問題を改善
- before
![Alt text](https://monosnap.com/file/bh1jzoNOzAMpey9J5dwLtNQJ5SLacZ.png)

- after
![Alt text](https://monosnap.com/file/NE4rpEAmjF101kcoliegH5BfpzX13D.png)

ここからマイルストーンの変更もできます。


# インストール方法

Chrome Extension管理画面( chrome://extensions/　)
を開いて、ダウンロードしたファイルをドラッグ・アンド・ドロップ

GitLabのページは一度リロードしてね :v:


# Contribution
[https://github.com/nyangry/gitlab-helper](https://github.com/nyangry/gitlab-helper)
