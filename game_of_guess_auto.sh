#!/usr/bin/env bash
set -o errexit
set -o nounset

ANS=$((RANDOM % 999 + 1))

MAX_RETRY=10

TOP=1000
BOTTOM=1

for ((i = 0; i < MAX_RETRY; i++)); do
  GUESS=$(((TOP + BOTTOM) / 2))
  echo "数値(0〜999)を入力してください: "$GUESS
  if [[ $GUESS -eq $ANS ]]; then
    echo "あなたの勝ち!"
    exit 0
  elif [[ $GUESS -gt $ANS ]]; then
    echo "大きすぎ! (残り $((MAX_RETRY - i - 1)))"
    TOP=$GUESS
  else
    echo "小さすぎ! (残り $((MAX_RETRY - i - 1)))"
    BOTTOM=$GUESS
  fi
done

echo "あなたの負け! 答えは $ANS"
exit 1
