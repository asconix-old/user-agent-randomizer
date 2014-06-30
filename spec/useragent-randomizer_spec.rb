require 'spec_helper'

describe UserAgent do

  it "is a String" do
    ua = UserAgent.new("desktop_browser").string
    expect(ua).to be_a String
  end

  it "has a type" do
    ua = UserAgent.new("desktop_browser").type
    expect(ua).to eq("desktop_browser")
  end

end
