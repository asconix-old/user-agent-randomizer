require 'yaml'

class UserAgentRandomizer

  USER_AGENTS = YAML.load_file(
    File.expand_path("../user_agents.yml", Gem.datadir("user_agent_randomizer"))
  )
  USER_AGENT_TYPES = USER_AGENTS.keys

  attr_reader :type, :string

  def initialize(type, string)
    @type = type
    @string = string
  end

  def self.fetch(type = nil)
    type = USER_AGENT_TYPES.include?(type) ? type : USER_AGENT_TYPES.sample
    new(type, USER_AGENTS[type].sample)
  end

end
