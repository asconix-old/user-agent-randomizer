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
      user_agents = UserAgentRandomizer.user_agents
      if ua_types.include?(type)
        UserAgentRandomizer::UserAgent.new(type: type, string: user_agents[type].sample)
      else
        ua_string = user_agents.values.flatten.sample
        ua_type = user_agents.select{|_,vals| vals.include?(ua_string)}.keys.first
        UserAgentRandomizer::UserAgent.new(type: ua_type, string: ua_string)
      end
    end
  end
end