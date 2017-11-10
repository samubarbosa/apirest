
require 'httparty'
require 'json'
require 'faker'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end

class Apis
  include HTTParty
  base_uri 'http://services.groupkt.com/country/get'
  default_params output: 'json'
end
