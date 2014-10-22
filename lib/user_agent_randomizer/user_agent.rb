require 'yaml'

module UserAgentRandomizer
  class UserAgent
    attr_accessor :type, :string

    def initialize(options = {})
      @type = options[:type]      
      @string = options[:string]      
    end

    def self.fetch(options = {})
      type = options[:type]
      ua_types = UserAgentRandomizer.user_agent_types
      user_agents_hash = UserAgentRandomizer.user_agents_hash
      if ua_types.include?(type)
        UserAgentRandomizer::UserAgent.new(type: type, string: user_agents_hash[type].sample)
      else
        ua = UserAgentRandomizer.user_agents_array.sample
        UserAgentRandomizer::UserAgent.new(type: ua[:type], string: ua[:string])
      end
    end
  end
end