#!/usr/bin/env ruby
# coding: utf-8

$LOAD_PATH.unshift File.expand_path(File.dirname(__FILE__) + '/..')
$LOAD_PATH.unshift File.expand_path(File.dirname(__FILE__) + '/../lib')

# require 'rubygems'
# require 'bundler'
require 'benchmark'
require 'user_agent_randomizer'
include Benchmark

times = ARGV[0] ? ARGV[0].to_i : 100_000
puts "Starting benchmark generating #{times} HTTP User-Agent strings ..."
Benchmark.benchmark(CAPTION, 40, FORMAT, nil) do |x|
	x.report("UserAgent.fetch") do
    times.times do
      UserAgentRandomizer::UserAgent.fetch
    end
  end
  x.report("UserAgent.fetch(type: 'desktop_browser'") do
    times.times do
      UserAgentRandomizer::UserAgent.fetch(type: 'desktop_browser')
    end
  end
end
