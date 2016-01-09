# GridsLite

A responsive grid system doesn't have to be complicated or full of unused styles. GridsLite.css is a lightweight and simple solution to responsive grids where you include the columns that you need and leave out the ones you don't. Also supports gutters for columns.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'grids_lite'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install grids_lite

## Setup
Pick and choose which column stylesheets to include in your asset pipeline. **base is not optional.**

```
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
```


## Usage

example 1
```
.col-1-1.col-1-2-med.col-2-8-lrg
  %div{style: "font-size: 20px"}
    = "100% wide at mobile width, 50% wide at tablet width, 25% wide at desktop width and above"

.col-1-1.col-1-2-med.col-6-8-lrg
  %div{style: "font-size: 20px"}
    = "100% wide at mobile width, 50% wide at tablet width, 75% wide at desktop width and above"
```

example 2
```
.col-1-1.col-1-5-med
  %div{style: "font-size: 20px"}
    = "100% wide at mobile width, 20% wide at tablet width and above"

.col-1-1.col-4-5-med
  %div{style: "font-size: 20px"}
    = "100% wide at mobile width, 80% wide at tablet width and above"
```

example with gutters
```
.gutters
  .col-1-1
    %div{style: "font-size: 20px"}
      = "100% wide at mobile width and above"
  .col-1-1
    %div{style: "font-size: 20px"}
      = "100% wide at mobile width and above"
```

## Gotchas

GridsLite uses ```display: inline-block``` to arrange the columns. To account for the default horizontal space between inline-block elements, GridsLite sets ```font-size: 0``` on the body tag. This means that **you MUST declare font-sizes for your elements** with classes or inline or however you wish.


## Future releases
To include: Customizing media query breakpoints and gutter distances

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/milesstanfield/grids_lite. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

