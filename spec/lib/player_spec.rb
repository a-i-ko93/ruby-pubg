require 'spec_helper'

describe Pubg::Player do
  let(:expected_result) { RecursiveOpenStruct.new(JSON.parse(api_response)) }

  before do
    stub_request(:get, request_url).to_return(
      status: 200,
      body: api_response,
      headers: { 'content-type' => 'application/json; charset=utf-8' }
    )
  end

  context '.by_nickname' do
    let(:nickname) { 'PuhovikPushistik' }
    let(:request_url) { "#{described_class::BASE_URL}profile/pc/#{nickname}" }
    let(:api_response) {
      File.read("#{File.expand_path('../..',__FILE__)}/fixtures/nickname_response.json")
    }

    subject { described_class.by_nickname(nickname) }

    it 'returns correct data' do
      expect(subject.as_a_hash).to eq(expected_result.as_a_hash)
    end
  end

  context '.by_steam_id' do
    let(:steam_id) { '76561198278451481' }
    let(:request_url) { "#{described_class::BASE_URL}search?steamId=#{steam_id}" }
    let(:api_response) {
      File.read("#{File.expand_path('../..',__FILE__)}/fixtures/steam_id_response.json")
    }

    subject { described_class.by_steam_id(steam_id) }

    it 'returns correct data' do
      expect(subject.as_a_hash).to eq(expected_result.as_a_hash)
    end
  end
end