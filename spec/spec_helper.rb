require 'simplecov'
require 'coveralls'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
 	SimpleCov::Formatter::HTMLFormatter,
	Coveralls::SimpleCov::Formatter
]
SimpleCov.start

require File.expand_path('../../lib/user_agent', __FILE__)