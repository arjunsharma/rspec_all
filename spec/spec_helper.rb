require 'runner'
require 'httparty'

RSpec.configure do |config|
  config.filter_run :focus
  config.run_all_when_everything_filtered = true

  config.default_formatter = 'doc'

  config.order = :random

  Kernel.srand config.seed

  config.before(:suite) do
    Runner.run
  end

  config.after(:suite) do
    Runner.stop
  end
end

def get(path)
    HTTParty.get("http://localhost:3000#{path}")
end