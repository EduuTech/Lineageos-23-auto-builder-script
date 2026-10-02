<h1 align="center">LineageOS 23 auto builder script</h1>

[Português-BR](README_PT.md) | [English](README.md)

Hello, welcome to my repository! This repository contains a LineageOS 23 builder, and i think i will add way to build other versions.

The KernelSU is normaly supported for non-GKI,but you can go to [here](#gki-for-ksu)

Its only for LineageOS 23
If you want to add something,create a issue or make your fork

What does this do?
This script installs the required tools and dependencies to build LineageOS 23.

How to download the script

```bash
git clone https://github.com/EduuTech/Lineageos-23-auto-builder-script.git
./menu.sh
```
## GKI for KSU
If you want KernelSU with GKI,just run 
```bash
./menu.sh --KSU-GKI
```

# Recommended Requirements  
Ubuntu 24 or Debian latest [Probaly supported oses](OS_LIST). 

Note:not all OSes are supported,Please see if your OS of choice is x64 and based of the Ubuntu 24,If you are using debian just download the latest

16GB of RAM   

8 cores. 

1TB SSD (If you want,use HDD,but its slower to compile)

# Warnig
Please,understand that you cant compile through Windows or mac
And Please,dont execute it on a diferent path that you are

Please do not run the other scripts with bash,it will give erros

Theres English and portuguese

I created this on boredom, i dont tested the scripts becuse i dont have propper hardware (I used android to create)

;D

To do:
- [x] Add suport to KernelSU
- [ ] Add suport to KernelSU GKI
- [x] Add a way to build signed builds (Still beign fixed)
- [x] Add a new way for translations (Still being worked on)

[Lincense](LINCENSE)

Still being fixed the way to sign and implementiting a simpler way to translations