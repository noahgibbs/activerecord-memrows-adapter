# MemRows Adapter for ActiveRecord

MemRows is a "fake" database adapter for ActiveRecord. It permits
reading, writing and searching of in-memory data rows using real
ActiveRecord and real SQL. It does *not* have the scalability or
capacity of a real database. It uses simple in-memory rows for tasks
like testing and benchmarking.

MemRows requires a custom database.yml file - it's an ActiveRecord
adapter. You use it very much like you use the Postgres, MySQL, SQLite
or NullDB adapters.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'activerecord-memrows-adapter'
```

And then execute:

    $ bundle

You can install it yourself as:

    $ gem install activerecord-memrows-adapter

If you install the gem yourself, you'll need to make sure it's in the
Gemfile for your Rails application or ActiveRecord won't be able to
use it.

## Usage

To use MemRows, you'll need to use the Gem (see Installation) and specify 'memrows' as your database adapter to ActiveRecord.

(To Be Added)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/noahgibbs/env_mem. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

See LICENSE.txt for the full text of the MIT License.
