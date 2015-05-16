# ArUnion

Patch to ActiveRecord::Relation allowing for unioned scopes and ordered union scopes.

If you have a sharded DB, beware of use on cross-shard queries.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ar_union'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ar_union

## Usage

Used to create union SQL call scope that can chained

    $ User.scope_on_user.union(
      :other_scope_on_user, :one_more_scope_on_user
    ).where(foo: "bar").pluck(:foo)

use ordered_union to maintain order:

     $ User.scope_on_user.ordered_union(
      :other_scope_on_user, :one_more_scope_on_user
    ).where(foo: "bar").pluck(:foo)


## Contributing

1. Fork it ( https://github.com/[my-github-username]/ar_union/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
