require "./qiita/*"

module Qiita
  ENDPOINT = "http://qiita.com/api/v2/"

  extend Qiita::Connection
  extend Qiita::Items
end
