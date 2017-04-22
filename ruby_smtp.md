# 背景

首先我要说一下我是在阿里云上用ruby的Net::SMTP类发送邮件的。下面我把我在阿里云上遇到的坑说一下
## 端口问题
 
可能是为保护阿里云还是怎么的，阿里云限制使用25端口，于是刚开始的时候怎么发邮件都发不了。最后我发现除了25端口 还可以用一些邮件服务商提供的587端口发送邮件 例如:
- smtp.gamil.com(不推荐使用  速度很慢 连接不稳定)
- smtp.qq.com

# Ruby  Net::SMTP基本介绍

Net::SMTP主要有new、start这两个方法   [英文文档](http://ruby-doc.org/stdlib-2.0.0/libdoc/net/smtp/rdoc/Net/SMTP.html)      [中文文档(菜鸟教程)](http://www.runoob.com/ruby/ruby-sending-email.html) 

```ruby
Net::SMTP.new(address, port).start(domain, user, secret, authtype)
```
## new方法 

new(address, port = nil)
```ruby
Net::SMTP.new(address, port)
```

## start方法 

start(address, port = nil, domain= 'localhost', user = nil, secret = nil, authtype = nil)
```ruby
msgstr = <<END_OF_MESSAGE
From: Your Name <your@mail.address>
To: Destination Address <someone@example.com>
Subject: test message
Date: Sat, 23 Jun 2001 16:26:43 +0900
Message-Id: <unique.message.id.string@example.com>

This is a test message.
END_OF_MESSAGE

require 'net/smtp'
Net::SMTP.start('your.smtp.server', 25) do |smtp|
  smtp.send_message msgstr, 'from@address', 'to@address'
end
```



## 实例

### 测试端口开放情况
在进行发送邮件之前先测试相应端口有没有开 使用telnet命令  阿里云ECS 25端口被禁  需要申请打开   其他相应端口需要在安全组中配置规则  即使端口打开了  也可能需要看一下有没有被防火墙给墙了。如果出现  Net::OpenTimeout 错误  那么多半是被墙了 或者端口根本没开  具体的的报错代码去看相应的SMTP的文档
```
$ telnet smtp.qq.com 587
$ telnet smtp.qq.com 25
```

以qq邮箱为例
### 获取qq邮箱SMTP客户端验证
- ![](https://ruby-china-files.b0.upaiyun.com/photo/2017/48623ffe-f86b-4a9f-a9b3-19e3a3795b3a.png!large)
- ![](https://ruby-china-files.b0.upaiyun.com/photo/2017/6c5d6165-f8d6-4967-a7ec-eb0d0472696a.png!large)
- ![](https://ruby-china-files.b0.upaiyun.com/photo/2017/16401e9c-55c1-4e12-8564-104e370be4fc.png!large)


下面的对应位置的 secret和authtype都是假的需要换成你们自己的QQ号和QQ邮箱SMTP客户端验证码 
```ruby
message = "这是一个测试用例"
require 'net/smtp'
Net::SMTP.start("smtp.qq.com", 587,"qq.com","QQ号","SMTP客户端验证码") do |smtp|
  smtp.send_message msgstr, 'from@address', 'to@address'
end
```
