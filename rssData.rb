# Create data models

class RssChannel
  # title
  def title=(t)
    @title = t
  end
  def title
    @title
  end

  # description
  def description=(t)
    @description = t
  end
  def description
    @description
  end

  # link
  def link=(t)
    @link = t
  end
  def link
    @link
  end

  # pubDate
  def pubDate=(t)
    @pubDate = t
  end
  def pubDate
    @pubDate
  end

  # RSSItems
  def rssItems=(t)
    @rssItems = t
  end
  def rssItems
    @rssItems
  end
end

class RSSItems
  # title
  def title=(t)
    @title = t
  end
  def title
    @title
  end

  # description
  def description=(t)
    @description = t
  end
  def description
    @description
  end

  # link
  def link=(t)
    @link = t
  end
  def link
    @link
  end


  # guid
  def guid=(t)
    @guid = t
  end
  def guid
    @guid
  end

  # pubDate
  def pubDate=(t)
    @pubDate = t
  end
  def pubDate
    @pubDate
  end
end
