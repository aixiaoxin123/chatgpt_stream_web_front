## chatgpt流式调用，前端实现打印机效果
本项目为前端页面，需要和后端项目搭配使用，（本人公众号：AI小新）
![image](aixiaoxin.png)
后端项目地址：https://github.com/aixiaoxin123/chatgpt_stream_web_service


## 前置要求

### Node

`node` 需要 `^16 || ^18 || ^19` 版本（`node >= 14` 需要安装 [fetch polyfill](https://github.com/developit/unfetch#usage-as-a-polyfill)），使用 [nvm](https://github.com/nvm-sh/nvm) 可管理本地多个 `node` 版本

```shell
node -v
```

### PNPM
如果你没有安装过 `pnpm`
```shell
npm install pnpm -g
```



## 本地部署安装

### 安装依赖包

1、根目录运行以下命令，安装pnpm

```
npm install pnpm -g
```


2、根目录运行以下命令,安装依赖包
```
pnpm install
```
3、测试环境运行

```
pnpm run dev 
```

4、打包生成dist文件夹

```
pnpm build
```
5、然后将 `dist` 文件夹内的文件复制到你网站服务的根目录下


6、运行地址
http://localhost:1002/



## 利用docker部署

### 使用 Docker

#### Docker 参数示例

![docker](./docs/docker.png)

#### Docker build & Run

```bash
docker build -t chatgpt-web-front .


# 后台运行
docker run --name chatgpt-web-front -d -p 0.0.0.0:3002:3002 --env OPENAI_API_KEY=your_api_key chatgpt-web-front

# 运行地址
http://localhost:3002/
```



## 常见问题


Q: 文件保存时全部爆红?

A: `vscode` 请安装项目推荐插件，或手动安装 `Eslint` 插件。

Q: 前端没有打字机效果？

A: 一种可能原因是经过 Nginx 反向代理，开启了 buffer，则 Nginx 会尝试从后端缓冲一定大小的数据再发送给浏览器。请尝试在反代参数后添加 `proxy_buffering off;`，然后重载 Nginx。其他 web server 配置同理。




## License
MIT © [aixiaoxin]
本人公众号：AI小新

参考原项目地址：https://github.com/Chanzhaoyu/chatgpt-web/


