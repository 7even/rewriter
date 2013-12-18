# Rewriter

A simple utility to parse and reconstruct ruby code to maintain a given coding style.

Currently just a proof of concept.

## Installation

``` sh
$ gem install rewriter
$ rbenv rehash # if you're using rbenv
```

## Usage

``` sh
$ rewrite foo.rb
```

NOTE: `rewrite` literally rewrites the file in place; use it with a control version system like [git](http://git-scm.com) so you can revert the changes.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
