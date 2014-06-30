require 'nokogiri'
require 'open-uri'
require 'zlib'
require 'bundler/gem_tasks'

task :default => [:spec]
task :spec do
  sh('rspec spec')
end

namespace :user_agents do
  desc "Fetch User-Agent strings from www.useragentstring.com"
  task :fetch do
  	urls = [
  		{type: "crawler", url: "http://www.useragentstring.com/pages/Crawlerlist/"},
  		{type: "desktop_browser", url: "http://www.useragentstring.com/pages/Browserlist/"},
  		{type: "mobile_browser", url: "http://www.useragentstring.com/pages/Mobile%20Browserlist/"},
  		{type: "console", url: "http://www.useragentstring.com/pages/Consolelist/"},
  		{type: "offline_browser", url: "http://www.useragentstring.com/pages/Offline%20Browserlist/"},
  		{type: "email_client", url: "http://www.useragentstring.com/pages/E-mail%20Clientlist/"},
  		{type: "link_checker", url: "http://www.useragentstring.com/pages/Link%20Checkerlist/"},
  		{type: "email_collector", url: "http://www.useragentstring.com/pages/E-mail%20Collectorlist/"},
  		{type: "validator", url: "http://www.useragentstring.com/pages/Validatorlist/"},
  		{type: "feed_reader", url: "http://www.useragentstring.com/pages/Feed%20Readerlist/"},
  		{type: "library", url: "http://www.useragentstring.com/pages/Librarielist/"},
  		{type: "cloud_platform", url: "http://www.useragentstring.com/pages/Cloud%20Platformlist/"},
  		{type: "other", url: "http://www.useragentstring.com/pages/Otherlist/"}
  	]
  	File.open("lib/data/user_agents.yml", 'w') { |file| file.write("---\n") }
  	urls.each do |target|
  		user_agents = []
  		puts "Fetching User-Agent strings for '#{target[:type]}' ..."
  		doc = Nokogiri::HTML(open(target[:url]))
  		doc.xpath("//div[@id='liste']/ul/li/a").each do |line|
  			user_agents << line.content.strip
  		end
  		File.open("lib/data/user_agents.yml", 'a') do |file|
  			file.write("#{target[:type]}:\n")
  			user_agents.each do |ua|
  				file.write "  - '#{ua}'\n"
  			end
  		end
  	end
  end
end
