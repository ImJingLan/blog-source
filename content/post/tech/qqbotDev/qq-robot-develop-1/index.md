---
title: cqhttp-go - 便捷开发自己的QQ机器人（一）
description: 使用go-cqhttp开发QQ机器人
date: 2022-07-08
slug: qqbot-dev-1
image: banner.png
categories:
  - 技术

license: CC BY-NC-SA 4.0
---

## 前言

夏天到了，又到了暑假的季节，是时候学一点新新的技术术啦！

之前一直用的是酷 Q 作为机器人框架，可惜因为一些原因，酷 Q 关闭了自己的官网，原先的免费版也无法再次登录，于是我便打算自己写一个 QQ 机器人

在互联网上一顿搜索过后，我找到了[go-cqhttp](https://docs.go-cqhttp.org/)，一个 QQ 机器人框架

go-cqhttp 支持`HTTP API` 和 `HTTP POST多点上报`，那么我们就可以用 python + flask 来制作一个最简单自动回复 QQ 机器人

有意思的事情，即将发生

## 环境搭建

首先我们肯定要登录机器人账号

具体步骤请参考[基础教程](https://docs.go-cqhttp.org/guide/quick_start.html)

然后就是 Python 环境

使用 pip 安装以下库

- requests - 与 go-cqhttp 交互

- flask - 接受 go-cqhttp 上报信息

这两个是基础库，其余根据自己代码的编写自行安装

## Start 开始！
