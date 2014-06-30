require 'yaml'

class UserAgent

  attr_accessor :type, :string

  def initialize(type)
    @type = type
    ua_types = ["crawler", "desktop_browser", "mobile_browser", "console",
      "offline_browser", "email_client", "link_checker", "email_collector",
      "validator", "feed_reader", "library", "cloud_platform", "other"]
    ua_h = YAML.load_file(File.expand_path("../data/user_agents.yml", __FILE__))
    if ua_types.include?(type)
      @string = ua_h[type].sample.to_s
    else
      @string = ua_h.values.flatten.sample
    end
  end

end
