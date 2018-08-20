#  代码混淆

```
AdmindeiMac:AutoPackage admin$ class-dump -H /Users/admin/Desktop/Test/AutoPackageDemo/build/Payload/AutoPackageDemo.app -o /Users/admin/Desktop/ssss
2018-04-29 12:41:10.392 class-dump[9553:68608] Error: Cannot find offset for address 0xb000000001000067 in stringAtAddress:
AdmindeiMac:AutoPackage admin$
```

## 使用方法
### 1.把CodeObfuscation拉到工程的根目录下
### 2. 配置Build Phase
点击工程名称 — > Build Phase — > Run Script
在里面添加 ``` $PROJECT_DIR/CodeObfuscation/confuse.sh ```，这句命令的意思的应用每次启动的时候，都会先去跑我们confuse.sh 脚本
报错解决办法：切换到CodeObfuscation目录下，输入命令行 ``` chmod 755 confuse.sh ``` 给我们的脚本授权
### 3.那么打开 func.list 文件，把要混淆的方法名和变量名打进去
### 4.编译一下项目，然后在CodeObfuscation目录下，我们会多出一个codeObfuscation.h文件。
### 5.把codeObfuscation.h倒入PCH文件中重新打包。

## 注意
系统的方法名和xib关联的控件名不能混淆。

## class_dump 安装
class-dump下载地址：http://stevenygard.com/projects/class-dump/

### 首先打开Terminal，输入mkdir ~/bin，在当前用户根目录下创建一个bin目录。
### 把下载下来的 dmg 打开，复制文件里面的class-dump到创建的bin目录下。赋予其可执行权限：
```chmod +x ~/bin/class-dump```
### 打开bash_profile文件配置环境变量：
```vim ~/.bash_profile
## 按下 i 键进入编辑状态，在最下方加一行
export PATH=$HOME/bin/:$PATH
## 按下esc键,再按shift+: 输入 wq进行保存退出编辑
```
### 在Terminal中执行```source ~/.bash_profile```
### 测试是否改变成功

安装过程：
```
Last login: Sun Apr 29 11:15:23 on console
AdmindeiMac:~ admin$ wget http://stevenygard.com/download/class-dump-3.5.tar.gz
--2018-04-29 12:16:24--  http://stevenygard.com/download/class-dump-3.5.tar.gz
正在解析主机 stevenygard.com (stevenygard.com)... 173.236.167.100
正在连接 stevenygard.com (stevenygard.com)|173.236.167.100|:80... 已连接。
已发出 HTTP 请求，正在等待回应... 200 OK
长度：281747 (275K) [application/x-tar]
正在保存至: “class-dump-3.5.tar.gz”

class-dump-3.5.tar. 100%[===================>] 275.14K  62.4KB/s  用时 4.4s

2018-04-29 12:16:30 (62.4 KB/s) - 已保存 “class-dump-3.5.tar.gz” [281747/281747])

AdmindeiMac:~ admin$ ls
Applications        Library            Public
Desktop            Movies            class-dump-3.5.tar.gz
Documents        Music            setuptools-33.1.1.zip
Downloads        Pictures
AdmindeiMac:~ admin$ tar xvf class-dump-3.5.tar.gz
x class-dump-3.5/
x class-dump-3.5/class-dump
x class-dump-3.5/README.md
x class-dump-3.5/src/
x class-dump-3.5/src/CDUnitTests-Info.plist
x class-dump-3.5/src/CHANGELOG.md
x class-dump-3.5/src/class-dump-Prefix.pch
x class-dump-3.5/src/class-dump.m
x class-dump-3.5/src/class-dump.xcodeproj/
x class-dump-3.5/src/deprotect-Prefix.pch
x class-dump-3.5/src/deprotect.m
x class-dump-3.5/src/formatType-Prefix.pch
x class-dump-3.5/src/formatType.m
x class-dump-3.5/src/Info.plist
x class-dump-3.5/src/keys.txt
x class-dump-3.5/src/MachObjC-Prefix.pch
x class-dump-3.5/src/Source/
x class-dump-3.5/src/Tests/
x class-dump-3.5/src/UnitTests/
x class-dump-3.5/src/UnitTests.old/
x class-dump-3.5/src/UnitTests.old/AllTests.h
x class-dump-3.5/src/UnitTests.old/AllTests.m
x class-dump-3.5/src/UnitTests.old/CDPathUnitTest.h
x class-dump-3.5/src/UnitTests.old/CDPathUnitTest.m
x class-dump-3.5/src/UnitTests.old/CDStructHandlingUnitTest.h
x class-dump-3.5/src/UnitTests.old/CDStructHandlingUnitTest.m
x class-dump-3.5/src/UnitTests.old/CDTypeFormatterUnitTest.h
x class-dump-3.5/src/UnitTests.old/CDTypeFormatterUnitTest.m
x class-dump-3.5/src/UnitTests.old/CDTypeLexerUnitTest.h
x class-dump-3.5/src/UnitTests.old/CDTypeLexerUnitTest.m
x class-dump-3.5/src/UnitTests.old/CDTypeParserUnitTest.h
x class-dump-3.5/src/UnitTests.old/CDTypeParserUnitTest.m
x class-dump-3.5/src/UnitTests.old/method-001.txt
x class-dump-3.5/src/UnitTests.old/otest-all
x class-dump-3.5/src/UnitTests.old/shud01-in.txt
x class-dump-3.5/src/UnitTests.old/shud01-out.txt
x class-dump-3.5/src/UnitTests.old/shud02-in.txt
x class-dump-3.5/src/UnitTests.old/shud02-out.txt
x class-dump-3.5/src/UnitTests.old/shud04-in.txt
x class-dump-3.5/src/UnitTests.old/shud04-out.txt
x class-dump-3.5/src/UnitTests.old/shud05-in.txt
x class-dump-3.5/src/UnitTests.old/shud05-out.txt
x class-dump-3.5/src/UnitTests.old/shud06-in.txt
x class-dump-3.5/src/UnitTests.old/shud06-out.txt
x class-dump-3.5/src/UnitTests.old/shud07-in.txt
x class-dump-3.5/src/UnitTests.old/shud07-out.txt
x class-dump-3.5/src/UnitTests.old/shud08-in.txt
x class-dump-3.5/src/UnitTests.old/shud08-out.txt
x class-dump-3.5/src/UnitTests.old/shud09-in.txt
x class-dump-3.5/src/UnitTests.old/shud09-out.txt
x class-dump-3.5/src/UnitTests.old/shud10-in.txt
x class-dump-3.5/src/UnitTests.old/shud10-out.txt
x class-dump-3.5/src/UnitTests.old/shud11-in.txt
x class-dump-3.5/src/UnitTests.old/shud11-out.txt
x class-dump-3.5/src/UnitTests.old/shud13-in.txt
x class-dump-3.5/src/UnitTests.old/shud13-out.txt
x class-dump-3.5/src/UnitTests.old/shud14-in.txt
x class-dump-3.5/src/UnitTests.old/shud14-out.txt
x class-dump-3.5/src/UnitTests.old/shud15-in.txt
x class-dump-3.5/src/UnitTests.old/shud15-out.txt
x class-dump-3.5/src/UnitTests.old/shud16-in.txt
x class-dump-3.5/src/UnitTests.old/shud16-out.txt
x class-dump-3.5/src/UnitTests.old/var-001.txt
x class-dump-3.5/src/UnitTests.old/var-002.txt
x class-dump-3.5/src/UnitTests.old/var-003.txt
x class-dump-3.5/src/UnitTests.old/var-004.txt
x class-dump-3.5/src/UnitTests.old/var-005.txt
x class-dump-3.5/src/UnitTests/en.lproj/
x class-dump-3.5/src/UnitTests/TestBlockSignature.m
x class-dump-3.5/src/UnitTests/TestCDArchFromName.m
x class-dump-3.5/src/UnitTests/TestCDArchUses64BitABI.m
x class-dump-3.5/src/UnitTests/TestCDNameForCPUType.m
x class-dump-3.5/src/UnitTests/TestFatFile_armv7_v7s.m
x class-dump-3.5/src/UnitTests/TestFatFile_Intel32_64.m
x class-dump-3.5/src/UnitTests/TestFatFile_Intel32_64_lib64.m
x class-dump-3.5/src/UnitTests/TestFatFile_Intel64_32.m
x class-dump-3.5/src/UnitTests/TestThinFile_Intel64.m
x class-dump-3.5/src/UnitTests/TestThinFile_Intel64_lib64.m
x class-dump-3.5/src/UnitTests/UnitTests-Info.plist
x class-dump-3.5/src/UnitTests/UnitTests-Prefix.pch
x class-dump-3.5/src/UnitTests/en.lproj/InfoPlist.strings
x class-dump-3.5/src/Tests/doTests.py
x class-dump-3.5/src/Tests/showdiff
x class-dump-3.5/src/Source/cd_objc2.h
x class-dump-3.5/src/Source/CDBalanceFormatter.h
x class-dump-3.5/src/Source/CDBalanceFormatter.m
x class-dump-3.5/src/Source/CDClassDump.h
x class-dump-3.5/src/Source/CDClassDump.m
x class-dump-3.5/src/Source/CDClassDumpVisitor.h
x class-dump-3.5/src/Source/CDClassDumpVisitor.m
x class-dump-3.5/src/Source/CDClassFrameworkVisitor.h
x class-dump-3.5/src/Source/CDClassFrameworkVisitor.m
x class-dump-3.5/src/Source/CDDataCursor.h
x class-dump-3.5/src/Source/CDDataCursor.m
x class-dump-3.5/src/Source/CDExtensions.h
x class-dump-3.5/src/Source/CDFatArch.h
x class-dump-3.5/src/Source/CDFatArch.m
x class-dump-3.5/src/Source/CDFatFile.h
x class-dump-3.5/src/Source/CDFatFile.m
x class-dump-3.5/src/Source/CDFile.h
x class-dump-3.5/src/Source/CDFile.m
x class-dump-3.5/src/Source/CDFindMethodVisitor.h
x class-dump-3.5/src/Source/CDFindMethodVisitor.m
x class-dump-3.5/src/Source/CDLCDataInCode.h
x class-dump-3.5/src/Source/CDLCDataInCode.m
x class-dump-3.5/src/Source/CDLCDyldInfo.h
x class-dump-3.5/src/Source/CDLCDyldInfo.m
x class-dump-3.5/src/Source/CDLCDylib.h
x class-dump-3.5/src/Source/CDLCDylib.m
x class-dump-3.5/src/Source/CDLCDylinker.h
x class-dump-3.5/src/Source/CDLCDylinker.m
x class-dump-3.5/src/Source/CDLCDynamicSymbolTable.h
x class-dump-3.5/src/Source/CDLCDynamicSymbolTable.m
x class-dump-3.5/src/Source/CDLCEncryptionInfo.h
x class-dump-3.5/src/Source/CDLCEncryptionInfo.m
x class-dump-3.5/src/Source/CDLCFunctionStarts.h
x class-dump-3.5/src/Source/CDLCFunctionStarts.m
x class-dump-3.5/src/Source/CDLCLinkeditData.h
x class-dump-3.5/src/Source/CDLCLinkeditData.m
x class-dump-3.5/src/Source/CDLCMain.h
x class-dump-3.5/src/Source/CDLCMain.m
x class-dump-3.5/src/Source/CDLCPrebindChecksum.h
x class-dump-3.5/src/Source/CDLCPrebindChecksum.m
x class-dump-3.5/src/Source/CDLCPreboundDylib.h
x class-dump-3.5/src/Source/CDLCPreboundDylib.m
x class-dump-3.5/src/Source/CDLCRoutines32.h
x class-dump-3.5/src/Source/CDLCRoutines32.m
x class-dump-3.5/src/Source/CDLCRoutines64.h
x class-dump-3.5/src/Source/CDLCRoutines64.m
x class-dump-3.5/src/Source/CDLCRunPath.h
x class-dump-3.5/src/Source/CDLCRunPath.m
x class-dump-3.5/src/Source/CDLCSegment.h
x class-dump-3.5/src/Source/CDLCSegment.m
x class-dump-3.5/src/Source/CDLCSegment32.h
x class-dump-3.5/src/Source/CDLCSegment32.m
x class-dump-3.5/src/Source/CDLCSegment64.h
x class-dump-3.5/src/Source/CDLCSegment64.m
x class-dump-3.5/src/Source/CDLCSourceVersion.h
x class-dump-3.5/src/Source/CDLCSourceVersion.m
x class-dump-3.5/src/Source/CDLCSubClient.h
x class-dump-3.5/src/Source/CDLCSubClient.m
x class-dump-3.5/src/Source/CDLCSubFramework.h
x class-dump-3.5/src/Source/CDLCSubFramework.m
x class-dump-3.5/src/Source/CDLCSubLibrary.h
x class-dump-3.5/src/Source/CDLCSubLibrary.m
x class-dump-3.5/src/Source/CDLCSubUmbrella.h
x class-dump-3.5/src/Source/CDLCSubUmbrella.m
x class-dump-3.5/src/Source/CDLCSymbolTable.h
x class-dump-3.5/src/Source/CDLCSymbolTable.m
x class-dump-3.5/src/Source/CDLCTwoLevelHints.h
x class-dump-3.5/src/Source/CDLCTwoLevelHints.m
x class-dump-3.5/src/Source/CDLCUnixThread.h
x class-dump-3.5/src/Source/CDLCUnixThread.m
x class-dump-3.5/src/Source/CDLCUnknown.h
x class-dump-3.5/src/Source/CDLCUnknown.m
x class-dump-3.5/src/Source/CDLCUUID.h
x class-dump-3.5/src/Source/CDLCUUID.m
x class-dump-3.5/src/Source/CDLCVersionMinimum.h
x class-dump-3.5/src/Source/CDLCVersionMinimum.m
x class-dump-3.5/src/Source/CDLoadCommand.h
x class-dump-3.5/src/Source/CDLoadCommand.m
x class-dump-3.5/src/Source/CDMachOFile.h
x class-dump-3.5/src/Source/CDMachOFile.m
x class-dump-3.5/src/Source/CDMachOFileDataCursor.h
x class-dump-3.5/src/Source/CDMachOFileDataCursor.m
x class-dump-3.5/src/Source/CDMethodType.h
x class-dump-3.5/src/Source/CDMethodType.m
x class-dump-3.5/src/Source/CDMultiFileVisitor.h
x class-dump-3.5/src/Source/CDMultiFileVisitor.m
x class-dump-3.5/src/Source/CDObjectiveC1Processor.h
x class-dump-3.5/src/Source/CDObjectiveC1Processor.m
x class-dump-3.5/src/Source/CDObjectiveC2Processor.h
x class-dump-3.5/src/Source/CDObjectiveC2Processor.m
x class-dump-3.5/src/Source/CDObjectiveCProcessor.h
x class-dump-3.5/src/Source/CDObjectiveCProcessor.m
x class-dump-3.5/src/Source/CDOCCategory.h
x class-dump-3.5/src/Source/CDOCCategory.m
x class-dump-3.5/src/Source/CDOCClass.h
x class-dump-3.5/src/Source/CDOCClass.m
x class-dump-3.5/src/Source/CDOCInstanceVariable.h
x class-dump-3.5/src/Source/CDOCInstanceVariable.m
x class-dump-3.5/src/Source/CDOCMethod.h
x class-dump-3.5/src/Source/CDOCMethod.m
x class-dump-3.5/src/Source/CDOCModule.h
x class-dump-3.5/src/Source/CDOCModule.m
x class-dump-3.5/src/Source/CDOCProperty.h
x class-dump-3.5/src/Source/CDOCProperty.m
x class-dump-3.5/src/Source/CDOCProtocol.h
x class-dump-3.5/src/Source/CDOCProtocol.m
x class-dump-3.5/src/Source/CDOCSymtab.h
x class-dump-3.5/src/Source/CDOCSymtab.m
x class-dump-3.5/src/Source/CDProtocolUniquer.h
x class-dump-3.5/src/Source/CDProtocolUniquer.m
x class-dump-3.5/src/Source/CDRelocationInfo.h
x class-dump-3.5/src/Source/CDRelocationInfo.m
x class-dump-3.5/src/Source/CDSearchPathState.h
x class-dump-3.5/src/Source/CDSearchPathState.m
x class-dump-3.5/src/Source/CDSection.h
x class-dump-3.5/src/Source/CDSection.m
x class-dump-3.5/src/Source/CDSection32.h
x class-dump-3.5/src/Source/CDSection32.m
x class-dump-3.5/src/Source/CDSection64.h
x class-dump-3.5/src/Source/CDSection64.m
x class-dump-3.5/src/Source/CDStructureInfo.h
x class-dump-3.5/src/Source/CDStructureInfo.m
x class-dump-3.5/src/Source/CDStructureTable.h
x class-dump-3.5/src/Source/CDStructureTable.m
x class-dump-3.5/src/Source/CDSymbol.h
x class-dump-3.5/src/Source/CDSymbol.m
x class-dump-3.5/src/Source/CDTextClassDumpVisitor.h
x class-dump-3.5/src/Source/CDTextClassDumpVisitor.m
x class-dump-3.5/src/Source/CDTopologicalSortProtocol.h
x class-dump-3.5/src/Source/CDTopoSortNode.h
x class-dump-3.5/src/Source/CDTopoSortNode.m
x class-dump-3.5/src/Source/CDType.h
x class-dump-3.5/src/Source/CDType.m
x class-dump-3.5/src/Source/CDTypeController.h
x class-dump-3.5/src/Source/CDTypeController.m
x class-dump-3.5/src/Source/CDTypeFormatter.h
x class-dump-3.5/src/Source/CDTypeFormatter.m
x class-dump-3.5/src/Source/CDTypeLexer.h
x class-dump-3.5/src/Source/CDTypeLexer.m
x class-dump-3.5/src/Source/CDTypeName.h
x class-dump-3.5/src/Source/CDTypeName.m
x class-dump-3.5/src/Source/CDTypeParser.h
x class-dump-3.5/src/Source/CDTypeParser.m
x class-dump-3.5/src/Source/CDVisitor.h
x class-dump-3.5/src/Source/CDVisitor.m
x class-dump-3.5/src/Source/CDVisitorPropertyState.h
x class-dump-3.5/src/Source/CDVisitorPropertyState.m
x class-dump-3.5/src/Source/NSArray-CDExtensions.h
x class-dump-3.5/src/Source/NSArray-CDExtensions.m
x class-dump-3.5/src/Source/NSData-CDExtensions.h
x class-dump-3.5/src/Source/NSData-CDExtensions.m
x class-dump-3.5/src/Source/NSError-CDExtensions.h
x class-dump-3.5/src/Source/NSError-CDExtensions.m
x class-dump-3.5/src/Source/NSScanner-CDExtensions.h
x class-dump-3.5/src/Source/NSScanner-CDExtensions.m
x class-dump-3.5/src/Source/NSString-CDExtensions.h
x class-dump-3.5/src/Source/NSString-CDExtensions.m
x class-dump-3.5/src/Source/ULEB128.h
x class-dump-3.5/src/Source/ULEB128.m
x class-dump-3.5/src/class-dump.xcodeproj/project.pbxproj
x class-dump-3.5/src/class-dump.xcodeproj/project.xcworkspace/
x class-dump-3.5/src/class-dump.xcodeproj/xcuserdata/
x class-dump-3.5/src/class-dump.xcodeproj/xcuserdata/nygard.xcuserdatad/
x class-dump-3.5/src/class-dump.xcodeproj/xcuserdata/nygard.xcuserdatad/xcschemes/
x class-dump-3.5/src/class-dump.xcodeproj/xcuserdata/nygard.xcuserdatad/xcschemes/all.xcscheme
x class-dump-3.5/src/class-dump.xcodeproj/xcuserdata/nygard.xcuserdatad/xcschemes/class-dump.xcscheme
x class-dump-3.5/src/class-dump.xcodeproj/xcuserdata/nygard.xcuserdatad/xcschemes/deprotect.xcscheme
x class-dump-3.5/src/class-dump.xcodeproj/xcuserdata/nygard.xcuserdatad/xcschemes/formatType.xcscheme
x class-dump-3.5/src/class-dump.xcodeproj/xcuserdata/nygard.xcuserdatad/xcschemes/MachObjC.xcscheme
x class-dump-3.5/src/class-dump.xcodeproj/xcuserdata/nygard.xcuserdatad/xcschemes/xcschememanagement.plist
x class-dump-3.5/src/class-dump.xcodeproj/project.xcworkspace/contents.xcworkspacedata
x class-dump-3.5/src/class-dump.xcodeproj/project.xcworkspace/xcuserdata/
x class-dump-3.5/src/class-dump.xcodeproj/project.xcworkspace/xcuserdata/nygard.xcuserdatad/
x class-dump-3.5/src/class-dump.xcodeproj/project.xcworkspace/xcuserdata/nygard.xcuserdatad/WorkspaceSettings.xcsettings
AdmindeiMac:~ admin$ ls
Applications        Library            Public
Desktop            Movies            class-dump-3.5
Documents        Music            class-dump-3.5.tar.gz
Downloads        Pictures        setuptools-33.1.1.zip
AdmindeiMac:~ admin$ mv class-dump-3.5 bin
AdmindeiMac:~ admin$ ls
Applications        Library            Public
Desktop            Movies            bin
Documents        Music            class-dump-3.5.tar.gz
Downloads        Pictures        setuptools-33.1.1.zip
AdmindeiMac:~ admin$ chmod +x ~/bin/class-dump
AdmindeiMac:~ admin$ vim ~/.bash_profile
AdmindeiMac:~ admin$ sudo vim ~/.bash_profile
Password:
AdmindeiMac:~ admin$ source ~/.bash_profile
AdmindeiMac:~ admin$ class-dump
class-dump 3.5 (64 bit)
Usage: class-dump [options] <mach-o-file>

where options are:
-a             show instance variable offsets
-A             show implementation addresses
--arch <arch>  choose a specific architecture from a universal binary (ppc, ppc64, i386, x86_64, armv6, armv7, armv7s, arm64)
-C <regex>     only display classes matching regular expression
-f <str>       find string in method name
-H             generate header files in current directory, or directory specified with -o
-I             sort classes, categories, and protocols by inheritance (overrides -s)
-o <dir>       output directory used for -H
-r             recursively expand frameworks and fixed VM shared libraries
-s             sort classes and categories by name
-S             sort methods by name
-t             suppress header in output, for testing
--list-arches  list the arches in the file, then exit
--sdk-ios      specify iOS SDK version (will look in /Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS<version>.sdk
--sdk-mac      specify Mac OS X version (will look in /Developer/SDKs/MacOSX<version>.sdk
--sdk-root     specify the full SDK root path (or use --sdk-ios/--sdk-mac for a shortcut)
AdmindeiMac:~ admin$
```


## 参考
[iOS逆向之class-dump](http://www.cnblogs.com/LeeGof/p/6992852.html)
[iOS简单逆向之：Class-Dump、Hopper](https://www.jianshu.com/p/85d951941c45)
[iOS代码混淆](https://www.jianshu.com/p/19bf42f22473)
[iOS安全攻防（二十三）：Objective-C代码混淆](https://blog.csdn.net/yiyaaixuexi/article/details/29201699)
[iOS代码混淆----自动](https://www.jianshu.com/p/0d42e5c6361c)
[class-dump最新安装方法](https://www.jianshu.com/p/025fa775f3a6)
