## Opal Ruby wrapper of Bootbox Javascript library

The goal of this project is to wrap the Bootbox Javascript library with Opal, providing a simple Ruby interface to Bootbox functionality.

Bootbox.js is a small open source (MIT) JavaScript library which implements dialog (alert, prompt, confirm) boxes using Bootstrap modals.

To find out more about Bootbox, go to http://bootboxjs.com.

To find out more about Opal, go to http://opalrb.org

## Installation

Install opal-bootbox from RubyGems:

```
$ gem install opal-bootbox
```

Or include it in your Gemfile for Bundler:

```
ruby
gem 'opal-bootbox'
```

## Cloning this repository

```
$ git clone https://github.com/balmoral/opal-bootbox
```

## Getting Started

### Usage

`opal-bootbox` can be added to your opal application sources using a standard require:

```
ruby
# app/application.rb
require 'opal'
require 'opal-bootbox'
```

> You need to bring your own `bootbox.js` or `bootbox.min.js` and bootstrap files.
>> http://bootboxjs.com/download/
>> http://getbootstrap.com/getting-started/#download
> and put the files in `app/` or whichever directory you are compiling assets from.

### Examples

```
$bootbox.alert('Hello world!') do
  puts 'hello world acknowledged'
end

$bootbox.alert(title: 'Alert dialog', message: 'Hello world!') do
  puts 'hello world acknowledged'
end

$bootbox.confirm('Are you sure?') do |result|
  puts "user is #{result ? 'sure' : 'unsure'}"
end

$bootbox.confirm(title: 'Confirmation dialog', message: Are you sure?') do |result|
  puts "user is #{result ? 'sure' : 'unsure'}"
end

$bootbox.prompt('What is your name?') do |result|
  if result 
    puts "user's name is '#{result}'"
  else
    puts "prompt dismissed"
  end  
end

$bootbox.prompt(title: 'Prompt dialog', message: 'What is your name?', value: 'default name') do |result|
  if result 
    puts "user's name is '#{result}'"
  else
    puts "prompt dismissed"
  end  
end

```

`$bootbox` is a global variable. `Opal::Bootbox` may be substituted. 

Strings (text) provided as arguments to bootbox methods may be HTML format.

## To do

* Implement Bootbox custom dialog options. 
* Documentation
* Testing

## Getting involved

To contribute to this project, follow the steps below.

1. Fork the repo ( https://github.com/balmoral/opal-bootbox/fork )
2. Create your feature branch (`git checkout -b new-branch`)
3. Commit your changes (`git commit -am 'description of commit'`)
4. Push to the branch (`git push origin new-branch`)
5. Create a Pull Request

Contributions welcome.

## Licenses

### Bootbox
Open source (MIT) licence.
See https://github.com/makeusabrew/bootbox/blob/master/LICENSE.md for details.

###opal-bootbox 
MIT Licence.
See LICENSE.txt


