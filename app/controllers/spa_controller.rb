class SpaController < ApplicationController
  def show
    @test_rss_channel = RssChannel.first
    @response = Net::HTTP.get(URI(@test_rss_channel.url))
    feed = Feedjira.parse(@response)

    raise
  end
end
 