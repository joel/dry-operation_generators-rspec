# frozen_string_literal: true

require "rails/generators"
require "operations/base"

# hook_for :test_framework, as: "operations:schema"
# "rspec:operations:schema" => Rspec::Generators::Operations::SchemaGenerator

module Rspec
  module Generators
    module Operations
      class SchemaGenerator < Rails::Generators::NamedBase
        include ::Operations::Base::Generators::BaseGenerator

        source_root File.expand_path("schema/templates", __dir__)

        desc "Creates a schema test file for the operation"

        def generate_files
          super

          template "schema_spec.rb.erb", "#{root_test_file_path}/operations/#{plural_name}/#{verb}/schema_spec.rb"
          template "base/schema_spec.rb.erb", "#{root_test_file_path}/operations/#{plural_name}/base/schema_spec.rb"
        end
      end
    end
  end
end
