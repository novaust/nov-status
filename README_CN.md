# Nov-Status - 简单的状态栏
[English](README.md) | 简体中文  

![screenshot](screenshot.png)  

**本状态栏用于窗口管理器 [dwm](https://dwm.suckless.org/).** ***本仓库主要为个人学习使用而创建***

## 使用
___仅在Arch Linux上通过测试.___ 按理来说可以在大部分Linux系统上运行.

### 依赖
+ 状态栏使用图标字体, 你需要 [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts)
+ 部分模块需要依赖, 见模块依赖

### 模块依赖
|程序|依赖|
|---|---|
|cmus|cmus|
|volume|amixer(alsa-units)|

### 运行
直接运行`nov-status.sh`
```
$ git clone https://github.com/Novaust/nov-status.git
$ cd nov-status
$ ./nov-status.sh
```
如果你想要状态栏随 dwm 启动, 有以下两个选项:

+ 编辑 `.xinitrc`.
	```
	# start nov-status
	/bin/bash path/to/nov-status.sh
	```
***
+ 确认你的dwm安装了 [autostart.diff](https://dwm.suckless.org/patches/autostart/) 补丁, 然后将 `nov-status.sh` 加入到你的 autostart 脚本中
	```
	/bin/bash path/to/nov-status.sh
	```

## 致谢
本应用参考了以下仓库的部分思路, 向这些开发者表示感谢.
+ [thytom/dwmbar](https://github.com/thytom/dwmbar)
+ [joestandring/dwm-bar](https://github.com/joestandring/dwm-bar)

## 许可
[GPL-3.0 License](LICENSE)
