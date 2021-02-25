# 附录 安装和配置Gitbook

## 概述

GitBook 是一个 Node.js 环境下，用于构建电子书的工具。

GitBook 让你能够使用 Markdown 来编排一本电子书，GitBook 能够根据 Markdown 文档，生成 PDF、ePub 或 Mobi 文档，还可以生成静态网页。

你可以将 GitBook 生成的静态资源放到某个静态网站的托管平台上（如 GitHub Pages），以便他人可以在线阅读你创作的内容。

GitBook 工作在 Node.js 环境下，因此，你需要确保你已经配置好 Node.js 环境。

## 安装

安装 GitBook 的命令行工具 gitbook-cli

```
$ npm install -g gitbook-cli
```

执行下面命令，查看 gitbook-cli 的版本，以确定其是否成功安装。

```
$ gitbook -V
CLI version: 2.3.2
GitBook version: 3.2.3
```

## 构建

为即将构建的电子书，单独创建一个文件夹，然后进入。

```
$ mkdir mybook
$ cd mybook
```

执行一下命令，完成Gitbook初始化操作

```
$ gitbook init
```

实际上，上面命令生成了下面 2 个文件。

```
├── README.md
└── SUMMARY.md
```

- README.md 将包含电子书的简介
- SUMMARY.md 将包含电子书的目录

有了这两个文件，就是一本结构完整的电子书了。

## 预览

执行下面命令，GitBook 将启动一个 Web 服务，监听在本地的 4000 端口上。


```
$ gitbook serve
Live reload server started on port: 35729
Press CTRL+C to quit ...

Serving book on http://localhost:4000
```

## 生成

执行下面命令，就可以将电子书的内容制作成静态网页，并保存在 _book 目录中。

```
$ gitbook build
```

## 部署到Github Pages

GitHub Pages 是 GitHub 提供的静态网站托管服务。

首先，请遵循 [这里](https://pages.github.com/) 的步骤搭建自己的 `GitHub Pages` 模块

GitHub Pages 的静态资源支持下面 3 个来源：

- master 分支
- master 分支的 /docs 目录
- gh-pages 分支

> 需要在对应的 `repo(username.github.io)` 的 `Settings` 项中找到 `GitHub Pages`，配置你倾向于的文档来源


执行下面命令，将 _book 目录推送到 GitHub 仓库的 gh-pages 分支。

```
$ git subtree push --prefix=_book origin gh-pages
```

或者在生成静态网页时，将保存的目录指定为 ./docs

```
$ gitbook build ./ ./docs
```

部署GitHub Pages的步骤可参考以下命令

```
$ git clone https://github.com/username/username.github.io
$ cd username.github.io
$ gitbook init
$ gitbook build ./ ./docs
$ git add .
$ git commit -m "feat: init"
$ git push origin master
```


