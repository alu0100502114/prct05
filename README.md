# Fraction

Lenguajes y Paradigmas de Programación
Práctica de laboratorio #5

Representar números fraccionarios y realizar operaciones aritméticas básicas con ellos

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fraction'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fraction

## Usage

# this Class lets you create an Fraction passing Numerator and Denominator to constructor
a = Fraction.new(6,10)
b = Fraction.new(4,3)
# to operate with Fractions
puts a + b
puts a - b
puts a * b
puts a / b

## Contributing

1. Fork it ( https://github.com/[my-github-username]/fraction/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
