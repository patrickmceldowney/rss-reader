# Create data models

class RssChannel
  # Title
  def Title=(t)
    @Title = t
  end
  def Title
    @Title
  end

  # Description
  def Description=(t)
    @Description = t
  end
  def Description
    @Description
  end

  # Link
  def Link=(t)
    @Link = t
  end
  def Link
    @Link
  end

  # PubDate
  def PubDate=(t)
    @PubDate = t
  end
  def PubDate
    @PubDate
  end

  # RSSItems
  def RSSItems=(t)
    @RSSItems = t
  end
  def RSSItems
    @RSSItems
  end
end

class RSSItems
  # Title
  def Title=(t)
    @Title = t
  end
  def Title
    @Title
  end

  # Description
  def Description=(t)
    @Description = t
  end
  def Description
    @Description
  end

  # Link
  def Link=(t)
    @Link = t
  end
  def Link
    @Link
  end


  # GUID
  def GUID=(t)
    @GUID = t
  end
  def GUID
    @GUID
  end

  # PubDate
  def PubDate=(t)
    @PubDate = t
  end
  def PubDate
    @PubDate
  end
end

