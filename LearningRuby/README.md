# Learning Ruby

- [Learning Ruby](#learning-ruby)
  - [Strings](#strings)
    - [Multiline](#multiline)
      - [Special character `\` or `+`](#special-character--or-)
        - [using `\`](#using-)
        - [Using `+`](#using--1)
    - [HEREDOC](#heredoc)
      - [Operator `<<-`, ignoring indentation](#operator---ignoring-indentation)
      - [Operator `<<~`, keep indentation](#operator--keep-indentation)
      - [HEREDOC data Interpolation](#heredoc-data-interpolation)
      - [HEREDOC using string  core methods](#heredoc-using-string--core-methods)
    - [Slice string](#slice-string)
      - [`.slice`](#slice)
      - [`.slice!`](#slice-1)
    - [removing prefix and suffix](#removing-prefix-and-suffix)
      - [`delete_prefix`](#delete_prefix)
      - [`delete_suffix`](#delete_suffix)
  - [Integer / Numbers](#integer--numbers)
  - [Equality Operators](#equality-operators)
    - [operator `==`](#operator-)
    - [operator `eql?`](#operator-eql)
    - [operator `equal?`](#operator-equal)
    - [operator `===`](#operator--1)
  - [Comparing Values](#comparing-values)

## Strings

### Multiline

There's few ways to handle multiline strings on ruby

#### Special character `\` or `+`

##### using `\`

```rb
"Something needs to be "\
"done so maybe, just maybe "\
"this might work"
```

**Output:**

```mono
"Something needs to bed one so maybe, just maybe this might work"
```

##### Using `+`

```rb
"Something needs to be " +
"done so maybe, just maybe " +
"this might work"
```

**Output:**

```mono
"Something needs to bed one so maybe, just maybe this might work"
```

### HEREDOC

#### Operator `<<-`, ignoring indentation

```rb
<<-TXT 
  Something needs to be
  done so maybe, just maybe
  this might work
TXT
```

**Output:**

```mono
"  Something needs to be\n  done so maybe, just maybe\n  this might work\n"
```

#### Operator `<<~`, keep indentation

```rb
<<~TXT 
  Something needs to be
  done so maybe, just maybe
  this might work
TXT
```

**Output:**

```mono
"Something needs to be\ndone so maybe, just maybe\nthis might work\n"
```

#### HEREDOC data Interpolation

Here docs also can have string interpolation

```rb
<<~HEREDOC
  Current time is #{Time.now}
HEREDOC
```

**Output:**

```mono
"Current time is 2022-12-21 17:12:42 -0300\n"
```

and still it could be used with a more complex interpolation

```rb
@patient = Patient.last

<<~HEREDOC
  Current time is #{@patient.first_name}
HEREDOC
```

**Output:**

```mono
"Current time is Lucas\n"
```

#### HEREDOC using string  core methods

HEREDOC also accept string methods, like `strip`, `chomp` and etc...

```rb
<<~HEREDOC.strip
  Current time is #{@patient.first_name}
HEREDOC
```

**Output:**

```mono
"Current time is Lucas"
```

### Slice string

#### `.slice`

```shell
irb(main):001:0> string = "prefix-content-suffix"
=> "prefix-content-suffix"
irb(main):002:0> string.slice("prefix-")
=> "prefix-"
irb(main):003:0> string
=> "prefix-content-suffix"
```

#### `.slice!`

```shell
irb(main):001:0> string = "prefix-content-suffix"
=> "prefix-content-suffix"
irb(main):002:0> string.slice!("prefix-")
=> "prefix-"
irb(main):003:0> string
=> "content-suffix"
```

### removing prefix and suffix

#### `delete_prefix`

```shell
irb(main):01:0> string = "prefix-content-suffix"
=> "prefix-content-suffix"
irb(main):02:0> string.delete_prefix("prefix-")
=> "content-suffix"
irb(main):03:0> 
```

It might use some sort of regex to remove only prefix, because it only removes what comes on prefix

```shell
irb(main):04:0> string.delete_prefix("-suffix")
=> "prefix-content-suffix"
irb(main):05:0> 
```

#### `delete_suffix`

```shell
irb(main):01:0> string = "prefix-content-suffix"
=> "prefix-content-suffix"
irb(main):02:0> string.delete_suffix("-suffix")
=> "prefix-content"
irb(main):03:0> 
```

Note that `delete_prefix` and `delete_suffix` returns the string modified, but it won't change the variable itself, as `slice!`, another interesting aspect is that if `slice` doesn't match the value to be removed it returns `nil`, however both delete methods returns always the string whether the value was matched or not.

## Integer / Numbers

| Type    |   limit    | Numeric Type | Column Size | Max value            |
|:--------|:----------:|:------------:|:-----------:|:---------------------|
| integer |     1      |   tinyint    |   1 byte    | 127                  |
| integer |     2      |   smallint   |   2 bytes   | 32767                |
| integer |     3      |  mediumint   |   3 byte    | 8388607              |
| integer | nil, 4, 11 |   int(11)    |   4 byte    | 2147483647           |
| bigint  |    5..8    |    bigint    |   8 byte    | 9223372036854775807  |

## Equality Operators

- [`==`](#operator-)
- [`eql?`](#operator-eql)
- [`equal?`](#operator-equal)
- [`===`](#operator--1)

### operator `==`

### operator `eql?`

### operator `equal?`

### operator `===`

<https://medium.com/@khalidh64/difference-between-eql-equal-in-ruby-2ffa7f073532>

## Comparing Values

```rb
products = [{ type: "Product", title: "notebook", value: 20.00 }, { type: "Product", name: "pencils", value: 5.00 }]
services = [{ type: "Service", title: "Copy", price: 10.0 }, { type: "Service", title: "Colored copy", price: 15.00 }]

totals = (products + services).sort { |product, service| product["value"] <=> service["price"] }

totals.each { |total| p  total[:type]}
```

```mono
"Product"
"Product"                                                                         
"Service"
"Service"
```
