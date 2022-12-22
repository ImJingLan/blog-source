---
title: 使用Hugo搭建个人博客
description: 使用Hugo配合Vercel搭建个人博客
date: 2022-02-13
slug: hugo-blog
image: banner.png
categories:
    - 技术

license: CC BY-NC-SA 4.0
---

## 〇、前言
### 0.1 我为什么选择Hugo
Hugo是一个使用**Go**语言编写的静态网站生成器。
长期续费一个稳定的虚拟主机的费用是昂贵的，因此我放弃了原先的**Typecho**系统，转而寻找静态博客系统。在尝试了**Hexo**、**Jekyll**后，我选择了**Hugo**，原因首先是它支持Markdown语法，这使得我将文章从Typecho迁移至Hugo变得容易，其次是[**Stack**](https://github.com/CaiJimmy/hugo-theme-stack)主题仅适用于Hugo (搭建博客第一要领：好看)

### 0.2 网页托管

说起网页托管，大家第一想到的大概都是[**Github Pages**](https://pages.github.com)吧，最初我也是使用gh来对生成的动态页面进行托管，可长期使用下来我发现gh pages存在一些问题：

1. github pages会对绑定的域名进行cname验证，而Cloudflare默认将主域名的CNAME拉平成A解析，这导致我的域名一周多了还没有通过验证
2. Github Pages默认给每个域名申请免费的SSL证书，而我的一个域名出现了SSL证书出错的情况😓，最后也没排查出是域名还是gh pages的问题
3. 可能会有DNS污染导致github.io无法访问
4. 不支持PHP，导致我原先的一些脚本无法使用

为了解决这些问题，我在知乎游了一圈，发现了一个宝藏部署服务：[**Vercel**](https://vercel.com)

![Vercel主页](vercel.png)

Vercel有以下优点：

1. 访问速度比Github Pages快

2. 比Github Pages稳定

3. 自带SSL证书

4. 支持将域名DNS服务器迁移至Vercel

放一张Github Pages与Vercel速度对比图（左：Gh Pages | 右：vercel）
![Speed Compair](speed-compair.png)

> 数据、地图来自 [站长工具 > 国内网站测速](https://tool.chinaz.com/speedtest/)

Vercel 比 GhPages 绿多了（逃

## 一、准备工作

### 1.1 安装Hugo

> 本文仅展示使用Windows安装Hugo
>
> 本教程中使用 [**scoop**软件包管理器](https://scoop.sh/) 安装
>
> 其余方法大同小异，请自行使用搜索引擎搜索
>
> 安装scoop，请看这篇文章：[Scoop - 一款强大的Windows包管理工具](/p/install-scoop/)

<code>win</code> + <code>r</code> 打开运行窗口

![运行](run-windows.png)

输入<code>Powershell</code>

在打开的窗口中输入

<code>scoop install hugo</code>

或者用以下方式安装扩展版本

<code>scoop install hugo-extended</code>

当控制台显示<code><span style="color:green"><b>'hugo' (0.92.2) was installed successfully!</b></span></code>时代表安装已完成

> 若选择安装拓展版本，则当显示<code><span style="color:green"><b>'hugo' (0.92.2) was installed successfully!</b></span></code>时代表安装已完成



> 括号内版本号以最新版本为准

### 1.2 创建站点

#### 1.2.1 初始化站点

在控制台中输入<code>hugo new site 路径</code>新建一个站点

如<code>hugo new site E:\myblog</code>

这个命令将在E盘中创建一个名为myblog的目录并在此中创建一个新的hugo站点

#### 1.2.2 安装主题

由于新站点中无主题，因此无法渲染，所以我们需要安装一个新主题

在本文中选择从hexo移植的[Next主题](https://github.com/elkan1788/hugo-theme-next)

进入站点根目录后，使用git获取主题

<code>git clone https://github.com/elkan1788/hugo-theme-next.git themes/hugo-theme-next</code> 

复制站点根目录/theme/hugo-theme-next/exampleSite中的文件并粘贴至站点根目录后覆盖

运行<code>hugo server</code>

恭喜你，你的hugo博客已成功运行

#### 1.2.3 自定义博客

待完成.....
