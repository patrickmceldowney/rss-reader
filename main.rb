require_relative 'rssManager.rb'
require_relative 'rssData.rb'

class Application
  def Execute
    rssUrl = "https://news.yahoo.com/rss"

    rssManager = RSSManager.new
    rssChannel = rssManager.load_rss_channel_from_url(rssUrl)

    puts rssChannel.title
    puts rssChannel.description
    puts rssChannel.link
    puts rssChannel.pubDate

    for index in 0..rssChannel.rssItems.length - 1 do
      puts rssChannel.rssItems[index].title
      # puts rssChannel.rssItems[index].description[0..20]
      puts rssChannel.rssItems[index].link
      puts rssChannel.rssItems[index].guid
      puts rssChannel.rssItems[index].pubDate
    end
  end
end

application = Application.new
application.Execute
