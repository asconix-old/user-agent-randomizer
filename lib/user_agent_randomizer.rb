require 'user_agent_randomizer/version'
require 'user_agent_randomizer/user_agent'

require 'yaml'

module UserAgentRandomizer
  extend self

  def parameter(*names)
    names.each do |name|
      attr_accessor name
      define_method name do |*values|
        value = values.first
        value ? self.send("#{name}=", value) : instance_variable_get("@#{name}")
      end
    end
  end

  def config(&block)
    instance_eval &block
  end
end

UserAgentRandomizer.config do
  parameter :user_agent_types
  parameter :user_agents_hash
  parameter :user_agents_array
end

if Gem.loaded_specs['user-agent-randomizer'].nil?
  gem_path = File.expand_path("../..", __FILE__)
else
  gem_path = Gem.loaded_specs['user-agent-randomizer'].full_gem_path
end

user_agents_hash = YAML.load_file(File.join(gem_path, 'data', 'user_agents.yml'))
user_agents_array = []
user_agents_hash.each_pair do |type, ua_strings|
  ua_strings.each do |ua_string|
    user_agents_array << {type: type, string: ua_string}
  end
end

UserAgentRandomizer.config do
  user_agent_types ["crawler", "desktop_browser", "mobile_browser", "console",
      "offline_browser", "email_client", "link_checker", "email_collector",
      "validator", "feed_reader", "library", "cloud_platform", "other"]      
  user_agents_hash user_agents_hash
  user_agents_array user_agents_array
end
