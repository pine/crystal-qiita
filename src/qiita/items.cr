require "./items/*"

module Qiita
  module Items
    def search_items(options = {} of String => String)
      convert_response(get("items", options))
    end

    private def convert_response(data)
      Array(Qiita::Items::Item).from_json(data)
    end
  end
end
