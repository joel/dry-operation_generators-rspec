# frozen_string_literal: true

module DryOperationsGeneratorsRspec
  RSpec.describe Main do
    subject(:foo) { described_class.new }
    describe "#dry_operations_generators_rspec" do
      context "when all is good" do
        let(:input) { "foo" }
        let(:result) { "foo" }

        it do
          expect(foo.dry_operations_generators_rspec(input)).to eql(result)
        end
      end
    end
  end
end
