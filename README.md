# Operation Generators RSpec

Operation Generators RSpec is a utility library designed to add the test file to the files required for new Business Logic actions with Dry Rb ecosystem.

This library doesn't make sense without [dry-operation_generators](https://github.com/joel/dry-operation_generators)

Generates the counterpart test files:

```shell
spec/operations/users/create/
├── contract_spec.rb
├── operation_spec.rb
└── schema_spec.rb
```

Please check out [operation_generators](https://github.com/joel/dry-operation_generators)

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add operation_generators-rspec

If Bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install operation_generators-rspec

NOTE: The gem needs to be required as `rspec`

    $ gem "operation_generators-rspec", require: "rspec"

Otherwise, you can require "rspec" on your code.

## Usage

Once installed, you can print out the Rails Generators Help:

```shell
rails generate --help
```

You should see

```shell
Operations:
  operations:schema

TestUnit:
  rspec:operations:schema
```

Now the Generators should appear:

```shell
Rspec:
  ...
  rspec:operations:contract
  rspec:operations:operation
  rspec:operations:schema
  ...
```

They are automatically call when the generator it's call:

```shell
rails generate operations:contract user create firstname:string{optional} --test_framework=rspec
    invoke  rspec
    create    test/operations/users/create/contract_test.rb
    create  app/operations/users/create/contract.rb
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

There is a generator of generators you can use to quickly add a new generator:

```shell
./bin/generator <generator name>
```

That provides the skeleton for the new generator. Note that the test suite should still run after the generated files.

Bug reports and pull requests are welcome on GitHub at https://github.com/orgs/joel/dry-operation_generators-rspec. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/joel/dry-operation_generators-rspec/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Isms project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/joel/dry-operation_generators-rspec/blob/main/CODE_OF_CONDUCT.md).
