# Create data models

class RssChannel
  attr_accessor :title
  attr_accessor :description
  attr_accessor :link
  attr_accessor :pubDate
  attr_accessor :rssItems
end
class RSSItems
  attr_accessor :title
  attr_accessor :description
  attr_accessor :link
  attr_accessor :guid
  attr_accessor :pubDate
end
