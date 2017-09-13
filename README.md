# Ruby wrapper for https://pubgtracker.com/site-api

## Installation

* Add to `Gemfile`

```ruby
gem 'pubg', git: 'https://github.com/a-i-ko93/ruby-pubg.git'
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
Pubg::Player.get('PuhovikPushistik')
```
