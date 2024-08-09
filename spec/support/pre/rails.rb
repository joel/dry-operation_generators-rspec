# frozen_string_literal: true

require "ostruct"

# # Define the Rails constant with an application attribute
# StubbedRails = Data.define(:application)

# # Define a Config class using Data to mimic the configuration structure
# Config = Data.define(:generators)

# # Create an instance of Config with the desired test_framework
# config_instance = Config.new(generators: OpenStruct.new(test_framework: :rspec))

# # Create an instance of Rails with the config instance
# rails_instance = StubbedRails.new(application: OpenStruct.new(config: config_instance))

# # Assign the instance to the Rails constant
# Rails = rails_instance

# # Now you can access the test framework like this:
# puts Rails.application.config.generators.test_framework # => :rspec

RSpec.configure do |config|
  config.before do
    puts "Before suite, this will be printed only once"
    # allow(Rails.application.config.generators).to receive(:test_framework).and_return(:rspec)
    allow(Rails).to receive_message_chain(:application, :config, :generators, :test_framework).and_return(:rspec)
    # allow(Rails).to receive(:application).and_return(OpenStruct.new(config: OpenStruct.new(generators: OpenStruct.new(test_framework: :rspec))))
  end
end
