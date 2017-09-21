require 'webmock/rspec'
require 'pubg'
require 'pry'

WebMock.disable_net_connect!(allow_localhost: true)

Pubg.configure do |c|
  c.tracker_id = 'ruby_pubg_spec'
end

RSpec.configure { |config| }
