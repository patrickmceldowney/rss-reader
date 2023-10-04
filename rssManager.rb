require 'open-uri'
require 'nokogiri'
require_relative 'rssData.rb'

class RSSManager
  def loadRSSChannelFromUrl(rssUrl)
    # Read RSS from URL
    xmlDoc = Nokogiri::XML(open(rssUrl))

    # Get/set RSS channel node
    rssChannelNode = xmlDoc.root.at_xpath('channel')

    # Create new RSS channel
    rssChanne = RssChannel.new
    rssChannel.Title = xmlDoc.root.at_xpath('channel/title').content

    return rssChannel
  end
end
