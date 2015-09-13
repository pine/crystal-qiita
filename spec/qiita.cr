describe Qiita do
  it "VERSION" do
    Qiita::VERSION.should be_a(String)
  end

  it "ENDPOINT" do
    Qiita::ENDPOINT.should be_a(String)
  end

  it "get" do
    WebMock.wrap do
      WebMock.stub(:get, "qiita.com/api/v2/items?query=Crystal")
      Qiita.get("items", { query: "Crystal" })
    end
  end

  it "search_items" do
    WebMock.wrap do
      WebMock.stub(:get, "qiita.com/api/v2/items?query=Crystal").
        to_return(body: "[]")

      result = Qiita.search_items({ query: "Crystal" })
      result.should be_a(Array(Qiita::Items::Item))
    end
  end
end
