#!/usr/bin/env bash

POST_DIR="_posts"
COUNT=400
POST_DATE="2026-01-04"

mkdir -p "$POST_DIR"

for i in $(seq 1 $COUNT); do
  NUM=$(printf "%03d" "$i")
  FILE_NAME="$POST_DATE-my-first-post-$NUM.md"

  cat <<EOF > "$POST_DIR/$FILE_NAME"
---
title: My first ever post $NUM
date: 2026-01-04 00:00:00 +0800
categories: [Hello world]
tags: [hello world]
---
EOF
done

