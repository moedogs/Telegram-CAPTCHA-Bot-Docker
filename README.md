# Telegram-CAPTCHA-bot-Docker 

[Telegram-CAPTCHA-bot](https://github.com/Tooruchan/Telegram-CAPTCHA-bot) 的 Docker 化实现

## 前置环境

 Docker
## 使用方法
1. 新建一个常用的存放配置文件的目录，并将`conf/config.json`复制进这个目录里

2. 按照如下格式修改`config.json`

```json
"token": "", //您在 @BotFather 处申请到的 Bot API Token
"api_id": 0, //您在 https://core.telegram.org/api/obtaining_api_id 申请到的 API ID 和 API Hash
"api_hash": "", //同上
"channel": "", //设定日志记录到的频道
"manage_user": 0, //具有bot后台管理权限的用户ID
```

3. 拉取镜像
   ` docker pull tooruchan/captchabot `

4. 启动Bot
   ` docker start -it -v <你存放config.json的目录绝对路径>:/usr/src/captcha/conf/ -d captchabot `
