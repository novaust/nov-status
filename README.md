# Nov-Status - Simple Status Bar
English | [简体中文](README_CN.md)  

![screenshot](screenshot.png)

**The Status is used for window manager called [dwm](https://dwm.suckless.org/).** ***The repo is mainly for personal learning and usage.***

## Usage
___Only passed test in Arch Linux,___ but it should be run conrrectly in most linux systems.

### Dependence
+ Status use icon fonts, you need [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts).
+ Some modules need dependence, see [Module Dependence](#module-dependence)

### Module Dependence

|Program|Dependence|
|---|---|
|cmus|cmus|
|volume|amixer(alsa-units)|

### Start
Run `nov-status.sh`
```
$ git clone https://github.com/Novaust/nov-status.git
$ cd nov-status
$ ./nov-status.sh
```
If you want to run status when dwm start, there're two options:

+ Edit `.xinitrc`:	
	```
	# start nov-status
	/bin/bash path/to/nov-status.sh
	```
- - -
+ Be sure your dwm have installed [autostart.diff](https://dwm.suckless.org/patches/autostart/), then add `nov-status.sh` to your autostart script.
	```
	/bin/bash path/to/nov-status.sh &
	```

## Thanks
This project refers to some ideas from following repo, thanks for these developers.
+ [thytom/dwmbar](https://github.com/thytom/dwmbar)
+ [joestandring/dwm-bar](https://github.com/joestandring/dwm-bar)

## LICENSE

[GPL-3.0 License](LICENSE)
