# Adorable Avatars

Easily add random persisted avatars to users (and not only) in your rails application. This gem is only a simple wrapper for [adorable avatars api](http://avatars.adorable.io/).

## Install

Add this to Gemfile:

```ruby
gem 'adorable_avatars'
```

and run `bundle install`

## Usage

In view simply add:

```erb
<%= adorable_avatar user.email %>
```

By default the size is 150px. If you want to specify size of the avatar, provide method with **size** option:

```erb
<%= adorable_avatar user.email, size: 50 %>
```

You can also set default size in an initializer

```ruby
# config/intitializers/adorable_avatars.rb
AdorableAvatars.setup do |config|
  config.default_size = 200
end
```

> Note: Size can range from 40px to 285px

Adorable avatars create simple wrapper around image_tag, so you can use all options that [image_tag](http://api.rubyonrails.org/classes/ActionView/Helpers/AssetTagHelper.html#method-i-image_tag) accepts

```erb
<%= adorable_avatar user.email, size: 50, alt: 'Adorable avatar' %>
```

## Contributing

1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request

## Copyright

Copyright (c) 2015 Mateusz Świszcz. See LICENSE for details.
