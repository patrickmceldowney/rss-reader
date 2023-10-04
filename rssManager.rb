require 'open-uri'
require 'nokogiri'
require_relative 'rssData.rb'

class RssManager
  def loadRssChannelFromUrl(rssUrl)
    # Read RSS from URL
    xmlDoc = Nokogiri::XML(open(rssUrl))

    # Get/set RSS channel node
    rssChannelNode = xmlDoc.root.at_xpath('channel')

    # Create new RSS channel
    rssChannel = RssChannel.new
    rssChannel.Title = xmlDoc.root.at_xpath('channel/title').content
    rssChannel.Description = rssChannelNode.at_xpath('description').content
    rssChannel.Link = rssChannelNode.at_xpath('link').content
    rssChannel.PubDate = rssChannelNode.at_xpath('pubDate').content
    rssChannel.RssItems = loadRssItemsFromUrl(rssUrl)

    return rssChannel
  end
end

def loadRssItemsFromUrl(rssUrl)
  # Read RSS from URL
  xmlDoc = Nokogiri::XML(open(rssUrl))

  # Get XML Nodes
  rssItemNodes = xmlDoc.root.at_xpath('channel/item')

  # Store RSSitems temporarily
  rssItems = []

  for index in 0..rssItemNodes.length - 1 do
    # Create new RSSItem
    rssItem = RssItem.new
  end
end
