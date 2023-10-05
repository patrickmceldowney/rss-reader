require 'open-uri'
require 'nokogiri'
require_relative 'rssData.rb'

class RSSManager
  def load_rss_channel_from_url(rss_url)
    # Read RSS from URL
    xmlDoc = Nokogiri::XML(URI.open(rss_url))

    # Get/set RSS channel node
    rssChannelNode = xmlDoc.root.at_xpath('channel')

    # Create new RSS channel
    rssChannel = RSSChannel.new
    rssChannel.title = xmlDoc.root.at_xpath('channel/title').content
    rssChannel.description = rssChannelNode.at_xpath('description').content
    rssChannel.link = rssChannelNode.at_xpath('link').content
    rssChannel.pubDate = rssChannelNode.at_xpath('pubDate').content
    rssChannel.rssItems = load_rss_items_from_url(rss_url)

    return rssChannel
  end

  def load_rss_items_from_url(rss_url)
    # Read RSS from URL
    xmlDoc = Nokogiri::XML(URI.open(rss_url))

    # Get XML Nodes
    rssItemNodes = xmlDoc.root.xpath('channel/item')

    # Store RSSitems temporarily
    rssItems = []

    rssItemNodes.each do |elem|
      # puts elem
      # Create new RSSItem
      rssItem = RSSItem.new
      rssItem.title = elem.at_xpath('title').content
      # rssItem.description = elem.at_xpath('description').content
      rssItem.link = elem.at_xpath('link').content
      rssItem.guid = elem.at_xpath('guid').content
      rssItem.pubDate = elem.at_xpath('pubDate').content
      rssItems.push(rssItem)
    end

    return rssItems
  end
end
