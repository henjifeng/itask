# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

## Rucaptcha依赖Dalli  Dalli依赖Memcached   没有Memcached的缓存就不能使用Rucaptcha:
### 安装Rucaptcha
```
gem install Rucaptcha
```
### 安装Dalli
```
gem install Dalli
```
### 安装Memcached 和启动
#### Linux CentOs
```
$ yum install memcached
$ memcached -d
```

## 下载代码 git clone  henjifeng:henjifeng/itask.git  使用了别名进行克隆 另外一个地址  git clone  wuhen:WHcoding/blog.git  这是个人的记录 对别人没用

