# Roda::SymbolizedParams

A [Roda](https://github.com/jeremyevans/roda) plugin that exposes symbolized
request params.

## Installation

```ruby
gem 'roda-symbolized_params'
```

## Usage

```ruby
require "roda"

class App < Roda
  plugin :symbolized_params

  route do |r|
    r.root do
      params[:foo] # symbolized request params
    end
  end
end
```

This plugin exposes the `#params` method which is just a wrapper around
`request.params`, but with symbolized keys.

This plugin is similar to the built-in `indifferent_params` plugin, but with
real symbolized keys. Advantage of this plugin is that you don't have to always
keep in mind that you still actually have string keys, so you can normally use
methods like `Hash#fetch`, and you can use params as keyword arguments.

An obvious disadvantage is that new symbols are created each time, which have
to be garbage collected. So you shouldn't use this plugin in Ruby versions <
2.2.0, because Ruby Symbol GC was only introduced in Ruby 2.2.0.

## License

[MIT](LICENSE.txt)
