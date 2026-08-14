require "test_helper"

class RssChannelTest < ActiveSupport::TestCase

  test " a RSS channel must have a title" do
    rss_channel = RssChannel.new(url: "https://www.test.com/feed", lang: "fr-Fr")
    assert_not rss_channel.valid?
  end

  test " a RSS channel must have a url" do
    rss_channel = RssChannel.new(title: "A music blog", lang: "fr-Fr")
    assert_not rss_channel.valid?
  end

  test "a RSS channel url should be unique" do
    rss_channel = RssChannel.new(title: "A duplicate", url: RssChannel.first.url, lang: "fr-Fr")
    assert_not rss_channel.valid?
  end


end
