# RailsMysqldump

rails_mysqldump run mysqldump in a Rails project.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails_mysqldump'
```

And then execute:

```bash
$ bundle install --path vendor/bundle
```

or

```bash
$ bundle install
```

## Usage

```bash
$ bin/rails c
> RailsMysqldump.run
```

Then, for example, `tmp/mysqldump/development_20171102133556.dump` file is generated.

When production environment:

```bash
$ bin/rails c -e production
> RailsMysqldump.run
```

Then, for example, `tmp/mysqldump/production_20171102133556.dump` file is generated.

By default, it is output to `tmp/mysqldump` .

If you want to output to another directory, execute:

```bash
RailsMysqldump.run('path/to/dump')
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mokuo/rails_mysqldump.
