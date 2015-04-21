require "roda"
require "rack/test"

Roda.plugin :symbolized_params

RSpec.configure do |config|
  config.disable_monkey_patching!
  config.include Rack::Test::Methods
  config.include Module.new { def app; Roda.app; end }
end
