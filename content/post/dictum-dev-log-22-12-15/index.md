---
title: 'Dictum开发日志 2022-12-25'
description:
date: 2022-12-15
slug: dictum-dev-log-22-12-15
image: 
categories:
    - 日志

image: banner.png
---

## Dictum 开发进度 [2022-12-15]

终于拾起几个月前的 Dictum 屎山代码了，在今日的更新中，我完善了 API 公开接口，伴随着 API 结构的大改

同时，用户的基本安全功能也已经实现：
[x] 修改密码
[x] 刷新 TOKEN

得益于 Token 机制的引入，前端调用更加地便捷

本次架构重构学习了[kasuganosoras/Pigeon](https://github.com/kasuganosoras/pigeon)(就是本站的程序)，对于 Dashboard 与 Api 均采用了模块设计，方便后续代码维护

本次更新大致内容如下

- 规范变量命名
- 添加管理面板主页与账号信息页
- 实现密码修改与 Token 刷新
- 更改了 API 目录结构

**下面是详细信息**

## 重要内容

### API 更改

为适应后续功能（账户管理 API）开发与代码可维护性需要，我们修改了 API 结构，原先的语句 API 终结点由/api/?type=[type]变更为/api/dictums/?module=[type]，基本语法不变

添加了用户账户管理 API 接口，终结点为/api/users//module=[module]，目前还在规范与完善中……

### 管理面板

我们在本次更新中实现了管理面板的雏形，并完成了用户账户密码的自主修改与令牌手动刷新

### 数据库

为适应后续功能（账户管理 API）开发与代码可维护性需要，我们更新了数据表的结构，在 users 表中添加 token(令牌) 与 reg_date(注册时间)，并计划在之后的更新中为用户及语句添加 UUID 项