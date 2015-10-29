## auto tweet

### せっとあっぷ

__gem install__

```bash
bundle install
```

__create access_token__
```bash
ruby oauth.rb
# go URL to get access token
vi config.yml
# set to
# 1. access_token
# 2. access_token secret
# 3. tweet message
```

### えぐぜきゅーと

```bash
ruby tweet.rb 'tweet'
```

### 定期ついーと

crontabでこんなんでどうですか?

__edit crontab__
```bash
crontab -e
```

__crontab setting__
```bash
# 毎日8時,12時,20時にtweet
00  8   *  *  * ruby /path/to/tweet.rb '1st tweet'
00  12   *  *  * ruby /path/to/tweet.rb '2nd tweet'
00  20   *  *  * ruby /path/to/tweet.rb '3rd tweet'
```
