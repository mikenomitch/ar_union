# AR_Union

Patch to ActiveRecord::Relation allowing for unioned scopes.

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

Note: this does not return the results in any guaranteed order.
If anybody knows how to maintain the order of the scopes being unioned,
open or a PR or ping me and I'd be happy to add another method.


## Contributing

1. Fork it ( https://github.com/[my-github-username]/ar_union/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
