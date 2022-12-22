---
title: Scoop - 一款强大的Windows包管理工具
description: Scoop的安装与使用
date: 2022-02-13
slug: install-scoop
image: banner.png
categories:
    - 技术

license: CC BY-NC-SA 4.0
---


## 〇、Scoop是什么
Scoop是一款在Windows上的包管理器


### Q：什么是包管理器？
A：简单来说，“包管理器”（或“软件包管理器”）是一种工具，它允许用户在操作系统上安装、删除、升级、配置和管理软件包。软件包管理器可以是像“软件中心”这样的图形化应用，也可以是像 apt-get 或 pacman 这样的命令行工具。
> 来自[https://linux.cn/article-12713-1.html](https://linux.cn/article-12713-1.html)

### Q:为什么选择Scoop（Scoop有什么优点）

- 仍在维护

- 不依赖管理员权限

- 防止安装大量程序造成的PATH污染

- 避免了安装和卸载程序的意外副作用

- 自动查找和安装依赖项

- 自己执行所有额外的安装步骤，以获得一个工作程序

> 翻译自[Scoop的README文件](https://github.com/ScoopInstaller/Scoop/blob/master/README.md)

## 一、安装scoop

<code>win</code> + <code>r</code> 打开运行窗口

![运行](run-windows.png)

输入<code>Powershell</code>

在打开的窗口中输入 

```powershell
iwr -useb get.scoop.sh | iex
```

或者

```powershell
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
```

> 如果您收到错误，您可能需要更改执行策略（即启用Powershell）
>
> ```powershell
> Set-ExecutionPolicy RemoteSigned -scope CurrentUser
> ```

当Powershell显示"<span style="color:green"><b>Scoop was installed successfully!</b></span>"时，即代表你的scoop已安装完成

![Install-Scoop](install-scoop.png)