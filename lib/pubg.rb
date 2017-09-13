module Pubg
  def self.configure
    yield @config ||= Pubg::Config.new
  end

  def self.config
    @config
  end
end

require 'faraday'
require 'faraday_middleware'

require 'pubg/config'
require 'pubg/parse_json_middleware'

require 'pubg/base'
require 'pubg/version'
require 'pubg/player'