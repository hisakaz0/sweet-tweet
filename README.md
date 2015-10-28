## auto tweet

### せっとあっぷ

```bash
ruby oauth.rb
# go URL to get access token
ruby access_token.rb <PIN_CODE>
# get access_token
vi config.yml
# set to
# 1. access_token
# 2. access_token secret
# 3. tweet message
```

### えぐぜきゅーと

```bash
ruby tweet.rb
```

### 定期ついーと

crontabでこんなんでどうですか?

__edit crontab__
```bash
crontab -e
```

__crontab setting__
```bash
00  8   *  *  * ruby /path/to/tweet.rb
00  12   *  *  * ruby /path/to/tweet.rb
00  20   *  *  * ruby /path/to/tweet.rb
```
