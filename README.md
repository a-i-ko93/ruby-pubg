# Ruby wrapper for https://pubgtracker.com/site-api

## Installation

* Add to `Gemfile`

```ruby
gem 'pubg'
```

* Configure gem with

```ruby
Pubg.configure do |c|
  c.tracker_id = 'tracker_id'
end
```

## Usage

* Get player by nickname, for example:

```ruby
Pubg::Player.by_nickname('PuhovikPushistik')
```

* Get player by Steam ID, for example:

```ruby
Pubg::Player.by_steam_id('76561198278451481')
```

## Running the tests

Spec files are located under `/spec` directory. You can run them using `rspec` command.

## License

* This project is licensed under the MIT License - see the [LICENSE.md](https://github.com/a-i-ko93/ruby-pubg/blob/master/LICENSE.md) file for details