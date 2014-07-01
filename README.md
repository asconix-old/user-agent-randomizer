# UserAgentRandomizer

[![Gem Version][GV img]][Gem Version]
[![Build Status][BS img]][Build Status]
[![Dependency Status][DS img]][Dependency Status]
[![Code Climate][CC img]][Code Climate]
[![Coverage Status][CS img]][Coverage Status]

There exist few use cases where random HTTP User-Agent strings are required. This is the reason why the `user_agent_randomizer` gem exists. Currently the gem provides roundabout 10.700 different User-Agent strings. You can choose a random HTTP User-Agent string from the entire pool as well as fetch a user agent by category.

Every HTTP User-Agent string is assigned exactly to one of the following categories:

* `crawler`
* `desktop_browser`
* `mobile_browser`
* `console`
* `offline_browser`
* `email_client`
* `link_checker`
* `email_collector`
* `validator`
* `feed_reader`
* `library`
* `cloud_platform`
* `other`

## Installation

Add this line to your application's Gemfile:

    gem 'user_agent_randomizer'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install user_agent_randomizer

## Usage

The usage is simple. You can fetch a random HTTP UserAgent string from the entire pool as well as one from a specified category (see list above):

```ruby
require 'user_agent_randomizer'

# Fetch a random HTTP User-Agent string from the entire pool
UserAgent.new
# => "AppEngine-Google; (+http://code.google.com/appengine; appid: longbows-hideout)"

# Fetch a random HTTP User-Agent for a desktop browser
UserAgent.new("desktop_browser")
# => "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.19 (KHTML, like Gecko) Iron/0.2.152.0 Safari/12733120.525"
```

## Contributing

1. Fork it ( https://github.com/asconix/user_agent_randomizer/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

Copyright © 2014 Christoph Pilka, released under the MIT license

[Gem Version]: https://rubygems.org/gems/user_agent_randomizer
[Build Status]: https://travis-ci.org/asconix/user_agent_randomizer
[travis pull requests]: https://travis-ci.org/asconix/user_agent_randomizer/pull_requests
[Dependency Status]: https://gemnasium.com/asconix/user_agent_randomizer
[Code Climate]: https://codeclimate.com/github/asconix/user_agent_randomizer
[Coverage Status]: https://coveralls.io/r/asconix/user_agent_randomizer

[GV img]: https://badge.fury.io/rb/user_agent_randomizer.png
[BS img]: https://travis-ci.org/asconix/user_agent_randomizer.png?branch=master
[DS img]: https://gemnasium.com/asconix/user_agent_randomizer.png
[CC img]: https://codeclimate.com/github/asconix/user_agent_randomizer.png
[CS img]: https://coveralls.io/repos/asconix/user_agent_randomizer/badge.png?branch=master
