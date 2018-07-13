## 开发环境
IDEA+SSM+Maven
_____

## 功能介绍
### 一.前台功能(面对用户)
> ##### 1.用户管理
> * 会员注册
> * 会员登陆
> * 会员退出

> ##### 2.订单管理
>* 查看订单状态
>* 付款
>* 确认收货
>* 评价
>* 删除订单

>##### 3.购物车管理
> * 添加商品
> * 删除商品
> * 结算

> ##### 4.商品展示
> * 商品展示
> * 搜索商品
> * 商品详情

### 二.后台功能
> ##### 1.分类管理(商品管理)
> * 修改名称
> * 属性管理
> >1. 新增属性
>> 2. 修改属性名
> *  产品管理
> >1.产品信息管理
>> 2.产品图片管理
>> 3.产品属性值管理

>##### 2.用户管理
> * 查看用户
> * 用户名密码修改

> ##### 3.订单管理
> * 查看订单信息
> * 发货操作

> ##### 4.推荐链接管理
____
## 表结构
![商城表结构_改进.png](https://upload-images.jianshu.io/upload_images/2155796-f52bf927b9611595.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
 _____
 
 ## 项目总结
 ##### 功能一展表
 ![image](http://upload-images.jianshu.io/upload_images/2155796-2f0c4f6e08cfac51?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
 
 ##### 项目页面一览表
 ![image](http://upload-images.jianshu.io/upload_images/2155796-09013111a2e6df7e?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
 
 > * 后端页面
 > * 公共页面
 > * 前台页面
 
 ##### 项目大体逻辑
 ![](https://upload-images.jianshu.io/upload_images/2155796-1bccad719ff68f36.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
 
 > * 控制器（Controller）： 用于控制页面的逻辑， 提取出一个 PageController 来专门控制页面的跳转，ForeController 用于前台所有的逻辑操作
 > * 拦截器（Interceptor）： LoginInteceptor 用于对登录进行判断，因为有一些页面需要登录之后才能访问的，例如：购物车；OtherInterceptor 用于向页面中添加一些其他的数据，例如：购物车数量。
 > * 业务层（Service层）： 业务处理层，其中封装了 Dao 层，用于完成主要的逻辑处理。
 
 ##### 前台用户操作展示
 ##### 首页
 ![首页.png](https://upload-images.jianshu.io/upload_images/2155796-379bbbbf7c5b3e14.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
 
 ##### 产品搜索页
 ![搜索页.png](https://upload-images.jianshu.io/upload_images/2155796-968e7c80ab871801.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
 
 ##### 产品展示页
 ![产品展示页.png](https://upload-images.jianshu.io/upload_images/2155796-6a9268e6393c9e41.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
 
 ##### 购买页
 ![购买页.png](https://upload-images.jianshu.io/upload_images/2155796-18db69f65f8a227a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
 
 ##### 付款页![付款页.png](https://upload-images.jianshu.io/upload_images/2155796-2639caf362175078.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
 







