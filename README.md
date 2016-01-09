# GridsLite

A responsive grid system doesn't have to be complicated or full of unused styles. GridsLite.css is a lightweight and simple solution to responsive grids where you include the columns that you need and leave out the ones you don't. Supports gutters for columns too!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'grids_lite'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install grids_lite

## Usage
Pick and choose which column stylesheets to include in your asset pipeline. **base is not optional.**

<pre>
# app/assets/stylesheets/application.css

*= require "grids_lite/base"
*= require "grids_lite/col-1"
*= require "grids_lite/col-2"
*= require "grids_lite/col-3"
*= require "grids_lite/col-4"
*= require "grids_lite/col-5"
*= require "grids_lite/col-6"
*= require "grids_lite/col-7"
*= require "grids_lite/col-8"
</pre>


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/milesstanfield/grids_lite. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

