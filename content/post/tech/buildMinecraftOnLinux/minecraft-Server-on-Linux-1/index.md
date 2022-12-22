---
title: '在Linux上搭建MC服务器（一）'
description: build-and-run-a-minecraft-Server
date: 2022-12-14
slug: minecraft-Server-on-Linux-1
image: done.png
categories:
    - 游戏
    - 技术

license: CC BY-NC-SA 4.0
---

接上文

自从有了一台独立服务器后，可以玩的东西就多了

于是决定开一个我的世界Java服务器

写一篇文章记录一下

## 一、安装运行环境

Minecraft Java版的服务器运行环境非常单纯，只需要一个Java就行

由于我想开一个1.16.5的服务器，所以Java版本选择了Java 17

安装过程参考的这篇文章《[Linux 安装 Java 17 - ChaosMoor](https://www.cnblogs.com/chaosmoor/p/15897693.html)》

## 二、下载服务端

Minecraft服务端有很多种，例如原版香草端(Vanilla)、Paper、Bukkit等

由于我希望保留原版的红石特性，所以选择了原版服务端

对于最新版本的Minecraft服务器，可以前往[Minecraft.net](https://www.minecraft.net/download/server)下载jar文件

如果你想获取特定版本的服务端文件，可以访问[Minecraft Wiki](https://minecraft.fandom.com/wiki/Minecraft_Wiki)搜索对应版本页面

![1.16.5 - WIKI](wiki.png)

▲ Wiki界面

Download(下载) -> Server(服务端)下载服务端

><span style="color:red !important"><b>注意，不开玩笑！</b></span>：千万不要误点括号后的(.json)文件，或错选Obfuscation maps(混淆映射表)中的Server(服务器)选项

## 三、运行服务器

进入终端

在服务器上新建一个文件夹存放服务端文件

`mkdir <文件夹名称>`

进入文件夹

`cd <刚才的文件夹名称>`

将下载好的服务端文件上传至该文件夹

![WinSCP](winscp-upload.png)

▲ 使用WinSCP上传

>我在这里将服务端命名为server.jar

修改文件权限

`chmod 744 <服务端文件名>.jar`

然后运行服务器！

`java -Xmx1024M -Xms1024M -jar <服务端文件名>.jar nogui`

![Waring-1](waring-1.png)

▲ 终端报错了

怎么回事，闪退啦?

查了下翻译软件，发现是要你同意Eula文件

做法很简单

用文本编辑器将eula.txt中最后一行`eula=false`修改为`eula=true`再次运行即可

![Accept EULA](eula-true.png)

▲ EULA.TXT修改后

><span style="color:green !important"><b>记住这点更好</b></span>：当你将eula改为**true**后，即代表你同意了《[MINECRAFT 最终用户许可协议](https://account.mojang.com/documents/minecraft_eula)》, 因此你最好详细阅读一下

## 四、服务器配置

无论是什么客户端，**server.properties**是必须的配置文件，当然，在第一次运行服务端时会自动生成，文件内容 + 必要注释 如下

```
#Minecraft server properties
enable-jmx-monitoring=false
rcon.port=25575
level-seed= # 服务器种子（用于第一次生成地图）
gamemode=survival # 服务器模式 ：creative:创造 survival:生存 adventure:冒险模式
enable-command-block=false # 是否启用命令方块
enable-query=false
generator-settings=
level-name=world
motd=A Minecraft Server # 服务器标语，即客户端显示的文字
query.port=25565
pvp=true # 是否开启PVP
generate-structures=true # 生成自然结构
difficulty=easy # 服务器难度
network-compression-threshold=256
max-tick-time=60000
use-native-transport=true
max-players=20 # 服务器最高人数
online-mode=true # 是否开启正常验证
enable-status=true
allow-flight=false # 是否运行浮空（黑客端）
broadcast-rcon-to-ops=true
view-distance=10
max-build-height=256
server-ip=
allow-nether=true # 是否开启末地
server-port=25565 # 服务器端口，默认25565
enable-rcon=false
sync-chunk-writes=true
op-permission-level=4
prevent-proxy-connections=false
resource-pack=
entity-broadcast-range-percentage=100
rcon.password=
player-idle-timeout=0
force-gamemode=false
rate-limit=0
hardcore=false
white-list=false # 是否开启白名单
broadcast-console-to-ops=true
spawn-npcs=true # 是否生成NPC (村民等生物)
spawn-animals=true # 是否生成动物
snooper-enabled=true
function-permission-level=2
level-type=default
text-filtering-config=
spawn-monsters=true
enforce-whitelist=false
resource-pack-sha1=
spawn-protection=16
max-world-size=29999984
```

可以对应自己实际情况修改，也可以下载[我的配置文件](server.properties)（基本默认）

## 五、成功
![Done](done.png)

▲ 游戏内的显示效果