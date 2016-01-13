# GridsLite

A responsive grid system doesn't have to be complicated or full of unused styles. GridsLite is a lightweight and simple solution to responsive grids where you include the columns that you need and leave out the ones you don't. Also supports gutters for columns.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'grids_lite', '~> 1.0.1'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install grids_lite -v 1.0.1

## Setup
Run this in your console

```
rails g grids_lite variables
```

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
*= require "grids_lite/col-9"
*= require "grids_lite/col-10"
*= require "grids_lite/col-11"
*= require "grids_lite/col-12"
*= require "grids_lite/col-13"
*= require "grids_lite/col-14"
```


## Usage

Wrap your ```col-``` classes in a ```columns``` class. If you are using text inside your ```col-``` classes you will also need to set a font-size for the text somewhere inside for the text to appear.

Example 1
```
<div class="columns">
  <div class="col-1-1 col-1-2-med col-2-8-lrg">
    <div style="font-size: 20px">
      100% wide at mobile width, 50% wide at tablet width, 25% wide at desktop width and above
    </div>
  </div>

  <div class="col-1-1 col-1-2-med col-6-8-lrg">
    <div style="font-size: 20px">
      100% wide at mobile width, 50% wide at tablet width, 75% wide at desktop width and above
    </div>
  </div>
</div>
````

Example 2
```
<div class="columns">
  <div class="col-1-1 col-1-5-med">
    <div style="font-size: 20px">
      100% wide at mobile width, 20% wide at tablet width and above
    </div>
  </div>

  <div class="col-1-1 col-4-5-med">
    <div style="font-size: 20px">
      100% wide at mobile width, 80% wide at tablet width and above
    </div>
  </div>
</div>
```

Example using gutters
```
<div class="columns gutters">
  <div class="col-1-1">
    <div style="font-size: 20px">
      100% wide at mobile width and above
    </div>
  </div>

  <div class="col-1-1">
    <div style="font-size: 20px">
      100% wide at mobile width and above
    </div>
  </div>
</div>
```

## Customize

To change media query breakpoints and gutter widths, change the sass variables in the generated file located at ```app/assets/stylesheets/grids_lite_variables.scss```

which has these variables

```
$med-width: 768px;
$lrg-width: 1024px;
$gutter-width: 20px;
```



## Notes

GridsLite uses ```display: inline-block``` to arrange the columns. To account for the default horizontal space between inline-block elements, GridsLite sets ```font-size: 0``` using the ```columns``` class. This means that **you MUST declare font-sizes for your text elements** with classes, id's, inline or however you wish.

When using ```gutters```, be aware a side margin is applied to that class and ```col-``` elements have side padding applied to them. It would be advisable when using ```gutters``` to not use any side margin/padding directly on those elements and instead use it above or below them in the dom hierarchy so no conflicts occur.



## Future releases
- Be able to nest columns within columns while using gutters and gutters not multiply on each level



## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/milesstanfield/grids_lite. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

