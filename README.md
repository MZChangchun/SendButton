# DYSoftAuth
#杭州鼎永科技有限公司统一身份认证 iOS SDK

## <a id="Installation"></a> Installation【安装】

### Manually【手动导入】

- Drag all source files under floder `DYSoftAuth` to your project.【将`DYSoftAuth`文件夹中的所有代码拽入项目中】
- Import the main header file：`#import "DYSoftAuth.h"`【导入主头文件：`#import "DYSoftAuth.h"`】


# <a id="Examples"></a> Examples【示例】

1.在`AppDelegate.m`中导入头文件`#import "DYSoftAuth.h"`
2.在`didFinishLaunchingWithOptions`方法中初始化
```
/**
 初始化操作

 @param authHost 认证中心的地址
 @param authWebUrl 开放平台的地址
 @param fileHost 文件中心的地址
 @param scope 授权范围 多个类型空格隔开
 @param clientID app的ID（分配的）
 @param clientSecret appkey(分配的)
 */
[[DYSoftAuth sharedAuth] initWithAuthHost:@"http://AuthHost"//认证中心的地址
                                   authWebUrl:@"http://WebUrl"
                                     fileHost:@"http://Host1"
                                        scope:@"openid profile"
                                     clientID:@"clientID"
                                 clientSecret:@"clientSecret"];
```





##千万要注意，如果你没有`[self.tabBar bringSubviewToFront:self.button];`的话，你点击一次更多里面的按钮后，这个tabbar上的`button`就无法点击了

##这时候你可能会问：为什么没有6娃呢？真是遗憾啊，6娃隐身没抓到啊！！！！

##编程是一种乐趣，分享是乐趣的一部分，如果你有好的想法或建议，欢迎讨论
