https://github.com/rspec

# RSpec Expectations [![Build Status](https://github.com/rspec/rspec-expectations/workflows/RSpec%20CI/badge.svg)](https://github.com/rspec/rspec-expectations/actions) [![Code Climate](https://codeclimate.com/github/rspec/rspec-expectations.svg)](https://codeclimate.com/github/rspec/rspec-expectations)

RSpec::Expectations lets you express expected outcomes on an object in an
example.

```ruby
expect(account.balance).to eq(Money.new(37.42, :USD))
```

## Install

If you want to use rspec-expectations with rspec, just install the rspec gem
and RubyGems will also install rspec-expectations for you (along with
rspec-core and rspec-mocks):

    gem install rspec

Want to run against the `main` branch? You'll need to include the dependent
RSpec repos as well. Add the following to your `Gemfile`:

```ruby
%w[rspec-core rspec-expectations rspec-mocks rspec-support].each do |lib|
  gem lib, :git => "https://github.com/rspec/#{lib}.git", :branch => 'main'
end
```

If you want to use rspec-expectations with another tool, like Test::Unit,
Minitest, or Cucumber, you can install it directly:

    gem install rspec-expectations

## Contributing

Once you've set up the environment, you'll need to cd into the working
directory of whichever repo you want to work in. From there you can run the
specs and cucumber features, and make patches.

NOTE: You do not need to use rspec-dev to work on a specific RSpec repo. You
can treat each RSpec repo as an independent project.

- [Build details](BUILD_DETAIL.md)
- [Code of Conduct](CODE_OF_CONDUCT.md)
- [Detailed contributing guide](CONTRIBUTING.md)
- [Development setup guide](DEVELOPMENT.md)

## Basic usage

Here's an example using rspec-core:

```ruby
RSpec.describe Order do
  it "sums the prices of the items in its line items" do
    order = Order.new
    order.add_entry(LineItem.new(:item => Item.new(
      :price => Money.new(1.11, :USD)
    )))
    order.add_entry(LineItem.new(:item => Item.new(
      :price => Money.new(2.22, :USD),
      :quantity => 2
    )))
    expect(order.total).to eq(Money.new(5.55, :USD))
  end
end
```
