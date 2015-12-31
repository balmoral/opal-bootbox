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
The Opal/Ruby interface is largely consistent with the Javascript interface.
 
See http://bootboxjs.com/documentation.html for Javascript library documentation.

Where a method expects a single callback substitute a block for the JS function.
  
The value for a `callback:` keyword argument should be a Ruby proc.

Keyword arguments should preserve the JS camelcase (e.g. className:).

### Examples

```
$bootbox.alert('Hello world!') do
  puts 'hello world acknowledged'
end
```

```
$bootbox.alert(
  size: 'small', 
  title: 'Alert', 
  message: 'Hello world!', 
  callback: -> {puts 'hello world acknowledged'}
)
```

```
$bootbox.confirm('Are you sure?') do |result|
  puts "user is #{result ? 'sure' : 'unsure'}"
end
```

```
$bootbox.confirm(
  size: 'small', 
  title: 'Confirmation', 
  message: 'Are you sure?'
  callback: ->(result) {
    puts "user is #{result ? 'sure' : 'unsure'}"
  }
end
```

```
$bootbox.prompt('What is your name?') do |result|
  if result 
    puts "user's name is '#{result}'"
  else
    puts "prompt dismissed"
  end  
end
```

```
$bootbox.prompt(
  size: 'small', 
  title: 'Prompt', 
  message: 'What is your name?', 
  value: 'default name'),
  callback: ->(result) {
    if result 
      puts "user's name is '#{result}'"
    else
      puts "prompt dismissed"
  } 
)
```

```
$bootbox.dialog(
  # required
  message: "I am a custom dialog",
  
  # optional - adds a header to the dialog and places this text in an h4 
  title: "Custom title",

  # optional - allows the user to dismiss the dialog by hitting ESC
  # which will call this proc 
  onEscape: -> { puts 'user press escape' },
  
  # optional - whether the dialog should be shown immediately
  show: true,
  
  # optional - whether the dialog should be have a backdrop or not
  backdrop: true,

  # optional - whether to show a close button (default true)
  closeButton: true,
  
  # optional - whether to animate (default true)
  animate: true,
  
  # optional - an additional CSS class to apply to the Bootstrap dialog wrapper
  className: "my-modal",
  
  # optional - a hash of buttons to be shown in the dialog's footer
  buttons: {
    
    success: {
      # optional - the button label    
      label: "Success!",

      # optional - an additional CSS class to apply to the button
      className: "btn-success",
      
      # optional - call proc when button is clicked
      callback: -> { puts 'success!' }
    },
    
    "Danger!": {
      # no label is provided so the key is used as the button label

      # optional - an additional CSS class to apply to the button
      className: "btn-danger",
      
      callback: -> { puts 'danger!' }
    },

    # if the only value supplied is a callback proc, 
    # the key is used as the button label and all
    # other options are defaulted

    "Warning!": -> { puts 'warning!}
  }
)
```

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


