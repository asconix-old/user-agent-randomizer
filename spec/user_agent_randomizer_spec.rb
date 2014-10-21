require 'spec_helper'

describe UserAgentRandomizer do

  it "is a String" do
    ua = UserAgentRandomizer.fetch("desktop_browser").string
    expect(ua).to be_a String
  end

  it "has a specific type" do
    ua = UserAgentRandomizer.fetch("desktop_browser").type
    expect(ua).to eq("desktop_browser")
  end

  it "has any type" do
  	ua = UserAgentRandomizer.fetch().type.size
  	expect(ua).to be > 0
  end

end
