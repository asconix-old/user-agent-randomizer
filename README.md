# UserAgentRandomizer

[![Gem Version][GV img]][Gem Version]
[![Build Status][BS img]][Build Status]
[![Dependency Status][DS img]][Dependency Status]
[![Code Climate][CC img]][Code Climate]
[![Coverage Status][CS img]][Coverage Status]

There exist few use cases where random HTTP User-Agent strings are required. This was the motivation for me to write this `user-agent-randomizer` Ruby gem. Currently it provides ca. 10.700 different HTTP User-Agent strings. You can choose a random HTTP User-Agent string from the entire pool as well as fetch a HTTP User-Agent string by category.

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

    gem 'user-agent-randomizer'

And then execute:

    $ bundle

Or install it manually:

    $ gem install user-agent-randomizer

## Usage

The usage is pretty simple. You can fetch a random HTTP User-Agent string from the entire pool as well as one from a specified category (see the list above):

Open an IRB and require the gem first of all:

    irb> require 'user_agent_randomizer'
    # => true

Fetch a random HTTP User-Agent string from the entire pool:

    irb> ua_all = UserAgentRandomizer::UserAgent.fetch
    # => #<UserAgentRandomizer::UserAgent:0x007fe1f30a6658 @type="crawler", @string="CatchBot/1.0;  http://www.catchbot.com">

Fetch a random HTTP User-Agent for a desktop browser:

    irb> ua_desktop = UserAgentRandomizer::UserAgent.fetch(type: "desktop_browser")
    # => #<UserAgentRandomizer::UserAgent:0x007fe1f2282b58 @type="desktop_browser", @string="Mozilla/4.6 [en] (WinNT; I)">

Retrieve the type and the string from the objects above:

    irb> puts "UA general -> type: '#{ua_all.type}', string: '#{ua_all.string}'"
    # => "UA general -> type: 'crawler', string: 'CatchBot/1.0;  http://www.catchbot.com'"

    irb> puts "UA desktop browser -> type: '#{ua_desktop.type}', string: '#{ua_desktop.string}'"
    # => "UA desktop browser -> type: 'desktop_browser', string: 'Mozilla/4.6 [en] (WinNT; I)'"

## Contributing

1. Fork it ( https://github.com/asconix/user-agent-randomizer/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

Copyright © 2014 Asconix Systems AS (Christoph Pilka), released under the MIT license

[Gem Version]: https://rubygems.org/gems/user-agent-randomizer
[Build Status]: https://travis-ci.org/asconix/user-agent-randomizer
[travis pull requests]: https://travis-ci.org/asconix/user-agent-randomizer/pull_requests
[Dependency Status]: https://gemnasium.com/asconix/user-agent-randomizer
[Code Climate]: https://codeclimate.com/github/asconix/user-agent-randomizer
[Coverage Status]: https://coveralls.io/r/asconix/user-agent-randomizer

[GV img]: https://badge.fury.io/rb/user-agent-randomizer.png
[BS img]: https://travis-ci.org/asconix/user-agent-randomizer.png?branch=master
[DS img]: https://gemnasium.com/asconix/user-agent-randomizer.png
[CC img]: https://codeclimate.com/github/asconix/user-agent-randomizer.png
[CS img]: https://coveralls.io/repos/asconix/user-agent-randomizer/badge.png?branch=master

