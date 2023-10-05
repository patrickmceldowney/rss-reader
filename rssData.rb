# Create data models

class RSSChannel
  attr_accessor :title
  attr_accessor :description
  attr_accessor :link
  attr_accessor :pubDate
  attr_accessor :rssItems
end
class RSSItem
  attr_accessor :title
  attr_accessor :description
  attr_accessor :link
  attr_accessor :guid
  attr_accessor :pubDate
end
