# iOSShell
ios打包混淆脚本

## 打包脚本

使用方法
* 把AutoPackage拉到自己的项目中
* 修改__SCHEME_NAME="iOSShell",为自己的项目名称
* 修改蒲公英key和fir
* 打开终端，执行 autopacking.sh

## 方法名混淆

把CodeObfuscation拉到自己的项目中

创建PCH文件，
把生成的 codeObfuscation.h 引入PCH文件中。
其它看CodeObfuscation中的文档

新项目，最好自己写的方法加上特定的前缀和系统的方法区分开。这样在做混淆的时候可以直接匹配前缀进行混淆

## 文件名混淆

把injectContentShell拉入自己的项目中

修改相关的项目名 class_search_dir="$(pwd)/../iOSShell/Class"

执行 RenameClasses.sh

这个里面还有一些其他脚本，感兴趣可以看一下原作者的博客


混淆主要有文件名混淆，方法名混淆，成员变量名混淆

系统的，与xib关联的方法名，变量名以及json对应的Model不能混淆

目前我所知道的混淆可以在3个阶段进行。
网上能找到的大部分方法以及这个脚本都是编译前对代码进行混淆的
替换Xcode的编译器在编译过程中对代码进行混淆(OLLVM)
直接修改二进制文件，网上一些收费的服务应该是用这种方法加固的
