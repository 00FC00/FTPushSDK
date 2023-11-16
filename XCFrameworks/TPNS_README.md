## 使用说明

1：xcframework是为了满足Apple新的库类型所推出的，集成时与原有SDK二选一。

2：如果您由原有SDK改为使用xcframework，使用步骤如下：
    2.1：删除原有SDK
    2.2：将xcframework拖入项目（XGExtension.xcframework为扩展插件使用无需放入主工程）
    2.3：在原来的头文件引用处改为xcframework引用，示例：#import <XG_SDK_Cloud/XG_SDK_Cloud.h>
    
3：文件引入说明
    3.1：XG_SDK_Cloud.xcframework（TPNS的主SDK，提供接口文件）
    3.2：XGExtension.xcframework（“抵达和富媒体”扩展插件库及接口头文件）
    3.3：XGInAppMessage.xcframework（应用内消息）
    3.4：XGMTACloud.xcframework（“点击上报”组件）
