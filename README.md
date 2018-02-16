# mustever

### 声明
本项目为练手项目，主要目的为学习JFinal框架。

### 启动注意事项
**特别注意**

- mustever 项目开发时的启动需要指定webapp的路径如：`JFinal.start("src/main/webapp", 80, "/", 5);`
- 其中的 "src/main/webapp" 必须要指定，在使用 eclipse 配置启动项时需要指定argument:`src/main/webapp` `80` `/` `5`

**注意**：

- IDEA 下开发时启动只需要三个参数argument:`src/main/webapp` `80` `/`也即比 eclipse 启动少了最后一个参数
- IDEA 下开发还需要将 pom.xml 中的 jetty-server 依赖配置中的<scope>provided</scope> 删除掉
- 请确保您安装了 JavaSE 1.6 或更高版本，tomcat下运行项目需要先删除 jetty-server-xxx.jar，否则会有冲突
### 项目启动步骤

1. 使用 dbsql/db.sql 中的 sql 语句创建数据库与数据库表

1. 修改 WebRoot/WEB-INF/config.txt 文件，填入正确的数据库连接用户名、密码

1. 将项目导入 eclipse。推荐使用 Eclipse IDE for Java EE Developers

1. 打开 com.mustever.common包下的 Config 文件，右键单击该文件并选择 Debug As ---> Java Application。

    其它启动项目的方式见 《JFinal手册》。
    
    除此之外，项目还可以与其它普通java web 项目一样使用 tomcat。
    
    jetty 等 web server 来启动，启动方式与非jfinal项目完全一样。

1. maven 项目还可以在控制台通过 mvn jetty:run 来启动

1. 打开浏览器输入 localhost 即可查看运行效果

### 开发阶段
- 已完成
    - 环境搭建
    - DB测试数据
    - Video模块简单分页查询
    - User模块简单注册、删除、修改密码、查询与登录
- 待开发
    - Token设计
    - Token授权机制
    - [Token鉴权机制与切片拦截](http://www.leeyom.top/2017/11/04/fontend-backend-separation/)
    - [Token多身份认证](https://www.cnblogs.com/beer/p/6029861.html)
    - Video相关部分的鉴权放行(不登录可观看)
    - User相关部分的鉴权
    - 评论功能
    - 支付宝与微信支付功能
    - 阿里云点播SDK相关功能