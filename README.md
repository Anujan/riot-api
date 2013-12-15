# Riot API

A Ruby wrapper around connecting to the [Riot API](https://developer.riotgames.com)

This is an ALPHA version. Please open up issues or send a pull request for any bugs you find =)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'riot-api'
```

Or install it yourself as:

```shell
$ gem install riot_api
```

## Usage:

If you haven't already, you'll need to go to [http://developer.riotgames.com/](http://developer.riotgames.com/) and get an API key.

```ruby
require 'riot-api'

# Before you can use the API, you have to give it your API Key
RiotAPI::API_KEY = 'API_KEY_HERE'
# Search by Summoner name
summoner = RiotAPI::Summoner.find_by_name('MrQuackers')
# => #<RiotAPI::Summoner:0x000000017a0840 @region="na", @id=20933307, @name="MrQuackers", @profile_icon_id=535, @summoner_level=30, @revision_date=1387030959000, @revision_date_str="12/14/2013 02:22 PM UTC"> 

summoner.name # => "MrQuackers"
summoner.summoner_level # => 30
summoner.mastery_pages # => Returns an array of mastery pages
MasteryPage.find("NA", 20933307) # => Equivalent to above

```

## [Documentation]()

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

For more information and a complete list see [the contributor page on GitHub](https://github.com/petems/riot_api/contributors).

## License

[MIT](./LICENSE.md)