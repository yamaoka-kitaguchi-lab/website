![](https://raw.githubusercontent.com/yamaoka-kitaguchi-lab/website/images/logo.png)

# Webコンテンツ管理リポジトリ [![Build Status](https://travis-ci.org/yamaoka-kitaguchi-lab/website.svg?branch=master)](https://travis-ci.org/yamaoka-kitaguchi-lab/website)
研究室Webサイトの公開コンテンツ（[トップ](https://www.net.ict.e.titech.ac.jp)・[入学希望の方へ](https://www.net.ict.e.titech.ac.jp/welcome)・[研究領域](https://www.net.ict.e.titech.ac.jp/research)・[ニュース](https://www.net.ict.e.titech.ac.jp/news)）を管理するリポジトリです．

1. masterブランチは保護されており，強制プッシュはできません
1. masterブランチへローカルの変更を反映するには，プルリクエストを作成する必要があります
1. プルリクエスト作成時に自動でWebサイトがビルドされ，これが正常に終了した場合のみmasterブランチへのマージとデプロイが行われます
    - **デプロイ先リポジトリ：[yamaoka-kitaguchi-lab/www.net.ict.e.titech.ac.jp](https://github.com/yamaoka-kitaguchi-lab/www.net.ict.e.titech.ac.jp)**

## ニュースの追加：`/content/news`
以下に例を示します．

- *title*: タイトル（必須）
- *date*: 日時（必須）
- *till*: 終了日時．旅行や学会など幅のあるイベントの場合に記述します
- *color*: `gray`・`dark-blue`・`light-blue`・`dark-green`・`light-green`・`dark-yellow`・`light-yellow` から選びます（必須）
- *achievement*: `国内学会`・`国際学会`・`受賞`など？
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

M2の赤岡さんとM1の宮さんが，アメリカのラスベガスで開催された国際会議 [IEEE Consumer Communications & Networking Conference ](https://ccnc2019.ieee-ccnc.org) で発表しました．
```
