# uLua-Demo
使用uLua框架SimpleFramework_UGUI进行UI资源和代码的热更新

## 注意事项
### 1.本工程使用真机测试，可打包成发布版apk，在安卓手机上测试；或者打包成测试版，用手机助手USB调试模式安装
### 2.需要修改的脚本1 AppConst.cs       
      public const bool DebugMode = false; //打包发布版，fasle ；打包测试版，true
	  public const bool UpdateMode = true; //如果开启更新模式，前提必须启动框架自带服务器端。未开启更新模式时，unity编辑器从StreamingAssets目录下加载资源
	  public const string WebUrl = "http://192.168.137.1:6688/";      //测试更新地址
	  这里的地址时电脑开启的热点地址
	  https://github.com/nongzhang/uLua-Demo.git/GuidePicture/ip.png
      需要修改的脚本2 GameManager.lua 路径MyuLuaSimpleFramework\Assets\Lua\Logic
	  AppConst.SocketPort = 6688;
      AppConst.SocketAddress = "192.168.137.1";
	  
	  需要修改的脚本3 HttpServer.cs 路径MyuLuaSimpleFramework\Server\Server\Service
	  打开MyuLuaSimpleFramework\Server下的vs工程Server.sln，这个就是服务端，修改host = "http://192.168.137.1:6688/";重新生成解决方案
	  
### 3.每次有资源更新或lua代码更新都需要点击 ，编辑器下Game-Build Android Resources
## 打包及测试步骤
   将Main场景添加到Build setting面板，点击build生成apk文件，在路径MyuLuaSimpleFramework\Server\Server\bin\Debug下用管理员方式运行SuperSocket.SocketService.exe
   输入r，回车，游戏服务器正在运行。
   拔掉网线，手机连接电脑热点，安装apk并打开，完成。
   
## 若手机无法连接热点，按以下步骤修改
https://github.com/nongzhang/uLua-Demo.git/GuidePicture/以太网.png
https://github.com/nongzhang/uLua-Demo.git/GuidePicture/热点修改.png
