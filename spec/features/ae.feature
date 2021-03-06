# encoding: utf-8
# language: ja

機能: ＡＥ検索機能を確認する
      業務SEとして、
      送受信状況照会の検索機能を見たい。
      何故なら、送受信の状況を確認したいから。

  背景: シナリオ毎にログインする
    前提 tfae サイトにアクセスする
    ならば トップページを表示する
    ならば 画面に"ユーザID"と表示されていること
    ならば "tomonaga"と"1203mazx1"を入力する
    かつ ログインボタンをクリックする
    ならば 画面に"状況照会メニュー"と表示されていること

 シナリオ: ＡＥ受信ファイル検索ページを表示する
    前提 画面に"状況照会メニュー"と表示されていること
    かつ "状況照会メニュー"リンクをクリックする
    ならば 画面に"ＡＥ受信ファイル検索一覧"と表示されていること
    かつ "ＡＥ受信ファイル検索一覧"リンクをクリックする
    ならば 主催企業コード"TF016000"を入力する
    かつ 検索ボタンをクリックする
    ならば 画面に"高島屋"と表示されていること
    ならば スクリーンショットを撮る

  シナリオ: ＡＥ送信ファイル検索ページを表示する
    前提 画面に"状況照会メニュー"と表示されていること
    かつ "状況照会メニュー"リンクをクリックする
    ならば 画面に"ＡＥ送信ファイル検索一覧"と表示されていること
    かつ "ＡＥ送信ファイル検索一覧"リンクをクリックする
    ならば 主催企業コード"TF016000"を入力する
    ならば ＡＥ取引先コード"152770200000001"を入力する
    かつ 検索ボタンをクリックする
    ならば 画面に"グッドリブ"と表示されていること
    ならば もう一枚スクリーンショットを撮る


