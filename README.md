# crystal-qiita
[![Build Status](https://travis-ci.org/pine613/crystal-qiita.svg)](https://travis-ci.org/pine613/crystal-qiita)
[![Dependency Status](https://shards.rocks/badge/github/pine613/crystal-qiita/status.svg)](https://shards.rocks/github/pine613/crystal-qiita)
[![devDependency Status](https://shards.rocks/badge/github/pine613/crystal-qiita/dev_status.svg)](https://shards.rocks/github/pine613/crystal-qiita)

A [Crystal](http://crystal-lang.org/) wrapper for the [Qiita](http://qiita.com/) API.

## Installation

Add this line to your application's `shard.yml`:

```yaml
dependencies:
  qiita:
    github: pine613/crystal-qiita
    version: ~> 0.3.0
```

## Usage
See example example/search\_items.cr and [Official API reference](https://qiita.com/api/v2/docs).

```crystal
require "qiita"

res = Qiita.search_items({ query: "Crystal" })
res.each{|item| puts item.title }
```

## How to run example
First, you should install Crystal compiler, using a tool such as [crenv](https://github.com/pine613/crenv).

```
$ git clone https://github.com/pine613/crystal-qiita.git
$ cd ./crystal-qiita
$ crystal deps
$ crystal run ./example/search_items.cr
Keyword> Crystal
All Crystal 20 items found.

 1: OpenShift で Crystal を動かす方法
  Author: pine613
  URL   : http://qiita.com/pine613/items/6be6a266871f6b34c3f8

 2: 文字の範囲・文字列の範囲
  Author: kubo39
  URL   : http://qiita.com/kubo39/items/6cf405b1386601f83f1f

 3: Crystal - Bool
  Author: tbpgr
  URL   : http://qiita.com/tbpgr/items/8c54baacf5bd7a0ddbb2

...
```

## Contributing

1. Fork it ( https://github.com/pine613/crystal-qiita/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## License
MIT License
