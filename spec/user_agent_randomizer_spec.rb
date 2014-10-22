require 'spec_helper'

describe 'UserAgentRandomizer::UserAgent' do

  it "contains HTTP User-Agent string" do
    ua = UserAgentRandomizer::UserAgent.fetch(type: "desktop_browser")
    expect(ua.string).to be_a String
  end

  it "has a specific type" do
    ua = UserAgentRandomizer::UserAgent.fetch(type: "desktop_browser")
    expect(ua.type).to eq("desktop_browser")
  end

  it "has any type" do
    ua = UserAgentRandomizer::UserAgent.fetch()
    expect(ua.type.size).to be > 0
  end

  it "returns a random browser if no type is specified" do
    ua = UserAgentRandomizer::UserAgent.fetch()
    expect(UserAgentRandomizer.user_agent_types).to include(ua.type)
  end

end
