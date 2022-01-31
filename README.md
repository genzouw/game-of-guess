# 1〜999の数字をあてる数当てゲーム

## 説明

1〜999の数字をあてる数当てゲームです。

* 答えとなる「数字」を予想し、入力します。
* 入力した数字が答えよりも大きすぎた場合、「大きすぎ！」と表示されます。
* 入力した数字が答えよりも小さすぎた場合、「小さすぎ！」と表示されます。
* 答えは10回まで入力できます。10回以内に答えが求められたら「あなたの勝ち」です。

## 実行

```bash
$ ./game_of_guess.sh
数値(0〜999)を入力してください: 500
大きすぎ! (残り 9)
数値(0〜999)を入力してください: 251
小さすぎ! (残り 8)
数値(0〜999)を入力してください: 375
小さすぎ! (残り 7)
数値(0〜999)を入力してください: 437
小さすぎ! (残り 6)
数値(0〜999)を入力してください: 468
小さすぎ! (残り 5)
数値(0〜999)を入力してください: 484
小さすぎ! (残り 4)
数値(0〜999)を入力してください: 497
あなたの勝ち!
```

## おまけ

出題に対して自動的に答えを算出する `game_of_guess_auto.sh` も作成しました。

*出力結果岳を見ても `game_of_guess.sh` との違いがわかりにくいですが、以下が実行結果になります。*

```bash
$ ./game_of_guess_auto.sh
数値(0〜999)を入力してください: 500
大きすぎ! (残り 9)
数値(0〜999)を入力してください: 250
小さすぎ! (残り 8)
数値(0〜999)を入力してください: 375
小さすぎ! (残り 7)
数値(0〜999)を入力してください: 437
大きすぎ! (残り 6)
数値(0〜999)を入力してください: 406
小さすぎ! (残り 5)
数値(0〜999)を入力してください: 421
小さすぎ! (残り 4)
数値(0〜999)を入力してください: 429
小さすぎ! (残り 3)
数値(0〜999)を入力してください: 433
小さすぎ! (残り 2)
数値(0〜999)を入力してください: 435
あなたの勝ち!
```