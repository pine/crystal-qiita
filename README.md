# crystal-qiita [![Build Status](https://travis-ci.org/pine613/crystal-qiita.svg)](https://travis-ci.org/pine613/crystal-qiita)

A [Crystal](http://crystal-lang.org/) wrapper for the [Qiita](http://qiita.com/) API.

## Installation

Add this line to your application's `Projectfile`:

```crystal
deps do
  github "pine613/crystal-qiita"
end
```

## Usage
See example example/search\_items.cr and [Official API reference](https://qiita.com/api/v2/docs).

```crystal
require "qiita"

res = Qiita.search_items({ query: "Crystal" })
res.each{|item| puts item.title }
```

## Contributing

1. Fork it ( https://github.com/pine613/crystal-qiita/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## License
MIT License
