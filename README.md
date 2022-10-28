# IP定位SDK开发文档

## 接入流程：

### 1，申请APPKEY

#### step1: 前往纯真官网注册账户，并申请appKey

地址：https://www.cz88.net/

步骤如图示：1，注册并登录cz88.net  ->  进入个人中心  ->  申请appkey

![申请步骤示例1](img/point.jpg)


### 2,接入SDK

#### 2.1 Cocoapods 自动集成(推荐)

1.Cocoapods集成可灵活配置所需SDK，在您项目工程（.xcodeproj）文件同目录下创建一个名为 Podfile 文件。


2.编辑Podfile内容，iOS 纯真SDK 的 Pod 库的名称为 CZ88SDK
````
target 'CZ88SDKDemo' do

  # Pods for CZ88SDKDemo
  pod 'CZ88SDK'

end

````
3.执行安装命令

```

pod install

```

4.导入成功，启动工程
命令执行成功后，会生成 .xcworkspace 文件，恭喜你已成功导入 SDK。打开.xcworkspace 文件以启动工程（注意：此时不能同时开启.xcodeproj文件）。

##### CocoaPods相关问题

无法更新到最新版本 若已经安装了纯真SDK，想要更新到最新版本，在Podfile文件的目录下使用以下命令：

```

pod repo update #用于保证本地地图相关SDK为最新版 pod update 

```



#### 2.2 手动集成

1.下载CZ88SDK.framework到本地 。


2.Xcode `File` —> `Add Files to "Your Project"`，在弹出Panel选中所下载组件包CZ88SDK.framework－>Add。（注：选中“Copy items if needed”）

![申请步骤示例2](img/manual.png)


3.添加依赖库，在项目设置`target` -> 选项卡`Build Phases` ->`Linked Frameworks and Libraries`如下：

![申请步骤示例3](img/libraries.png)


#### 2.3 在项目中使用

2.3.1 在您调用该SDK之前初始化该SDK，推荐在AppDelegate.m中完成


````
//导入头文件
#import <CZ88SDK/CZ88Header.h>


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
   
    //初始化并注册appkey(第一步申请的appkey)
    [[CZManager sharedInstance]registerCZ88Key:@"appkey"];
    
    //是否开启日志
    [[CZManager sharedInstance]setLogEnabled:YES];

    return YES;
}

````

2.3.2 接下来，您就可以使用该SDK获取您的IP归属地了


````
 //调用代码得到ip 归属地
[[CZManager sharedInstance]cz88_readipdetailcompleted:^(CZIPModel * _Nullable result, NSError * _Nullable error) {
        if(!error){
            NSLog(@"成功 ip=>%@ 国家=>%@ 省=>%@ 城市=>%@ 运营商=>%@",result.ip,result.country,result.province,result.city,result.isp);


        }else{
            NSLog(@"错误%@",error);

        }
    }];

````

### ResponseData返回说明
#### 正确返回CZIPModel对象：

````
@interface CZIPModel : NSObject

@property (nonatomic ,copy) NSString *ip;//IP地址
@property (nonatomic ,copy) NSString *country;//IP地址归属国家
@property (nonatomic ,copy) NSString *province;//IP地址归属省份
@property (nonatomic ,copy) NSString *city;//IP地址归属城市
@property (nonatomic ,copy) NSString *districts;//IP地址归属区域
@property (nonatomic ,copy) NSString *isp;//IP地址所属运营商

@end

````

#### 返回异常：

````
{
    "code":5109,
    "msg":"appKey校验异常"
}
````

#### code说明：

|code|说明 | 
|:---|:---| 
| 200|  操作成功  | 
| 5001|请求参数校验异常|    
|5108| appKey当日查询额度用尽|
|5109|appKey校验异常|
|-1|操作异常|

#### code= -1 message说明

###### Invalid appkey 未设置APPKEY



#### 注意查看info中是否配置了以下内容


```
    <key>NSAppTransportSecurity</key>
    <dict>
        <key>NSAllowsArbitraryLoads</key>
        <true/>
    </dict>

```






