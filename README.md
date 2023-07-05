Absolutely, it's important to specify that this gem is intended for use with Rails. Here's how you might update your `README.md` to reflect this:

```markdown
# EasyTabs

## Description

`easy_tabs` is a Ruby on Rails gem designed to simplify the creation and management of tabs in HTML. This helper can significantly cut down the time it takes to create and manage tabs, allowing for a more efficient development process in Rails applications.

## Requirements

This gem requires Rails 6.0 or later.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'easy_tabs'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install easy_tabs
```

## Usage

After installing the gem, you can use it in your Rails views as follows:

```ruby
= panels do
  = panel name: 'something'
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Greyoxide/easy_tabs. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/Greyoxide/easy_tabs/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the EasyTabs project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/Greyoxide/easy_tabs/blob/master/CODE_OF_CONDUCT.md).
```

This version of the README clearly states that this gem is for Rails and requires Rails 6.0 or later.