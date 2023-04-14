![](https://github.com/yamaoka-kitaguchi-lab/hugo-room308-bootstrap-theme/raw/master/static/image/lab-logo-white.png)

# Webコンテンツ管理リポジトリ [![](https://img.shields.io/github/issues/yamaoka-kitaguchi-lab/website)](https://github.com/yamaoka-kitaguchi-lab/website/issues) [![](https://img.shields.io/github/issues-pr/yamaoka-kitaguchi-lab/website)](https://github.com/yamaoka-kitaguchi-lab/website/pulls)
研究室Webサイトの公開コンテンツ（[トップ](https://www.net.ict.e.titech.ac.jp)・[入学希望の方へ](https://www.net.ict.e.titech.ac.jp/welcome)・[研究領域](https://www.net.ict.e.titech.ac.jp/research)・[ニュース](https://www.net.ict.e.titech.ac.jp/news)）を管理するリポジトリです．

1. **master ブランチは保護されています．** 直接プッシュ `git push origin master` はできません
1. master ブランチへローカルの変更を反映するにはプルリクエストを提出してください．なお，リクエストを承認し master ブランチへマージできるのは [net-root](https://github.com/orgs/yamaoka-kitaguchi-lab/teams/net-root) チームメンバーのみであり，さらにこれは以下2条件をクリアした場合に限られます:
    - **プルリクエスト作成時に自動実行されるテストをすべて通過すること**
    - **net-root によるコードレビューを経ること**
1. master ブランチへのマージ後，自動でWebサイトがビルドされ成果物が gh-pages ブランチにデプロイされます

## ニュースの追加：`/content/news`
以下に例を示します

- *title*: タイトル（必須）
- *date*: 日時（必須）
- *till*: 終了日時．旅行や学会など幅のあるイベントの場合に記述します
- *color*: `gray`・`dark-blue`・`light-blue`・`dark-green`・`light-green`・`dark-yellow`・`light-yellow` から選びます（必須）
- *achievement*: `国内学会`・`国際学会`・`受賞`など
- *location*: 場所

```
+++
title = "IEEE CCNC 2019 で発表しました"
date = "2019-01-11"
till = "2019-01-14"
color = "dark-green"
achievement = "国際学会"
location = "ラスベガス, アメリカ"
+++

M2の〇〇さんとM1の〇さんが，アメリカのラスベガスで開催された国際会議 [IEEE Consumer Communications & Networking Conference ](https://ccnc2019.ieee-ccnc.org) で発表しました．
```
