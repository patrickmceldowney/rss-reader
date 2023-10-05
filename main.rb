require_relative 'rssManager.rb'
require_relative 'rssData.rb'

class Application
  def Execute
    rssUrl = "https://news.yahoo.com/rss"

    rssManager = RssManager.new
    rssChannel = rssManager.load_rss_channel_from_url(rssUrl)

    puts rssChannel.title
    puts rssChannel.description
    puts rssChannel.link
    puts rssChannel.pubDate

    for index in 0..rssChannel.rssItems.length - 1 do
      puts rssChannel.resItems[index].title
      puts rssChannel.resItems[index].description[0..20]
      puts rssChannel.resItems[index].link
      puts rssChannel.resItems[index].guid
      puts rssChannel.resItems[index].pubDate
    end
  end
end

application = Application.new
application.Execute
