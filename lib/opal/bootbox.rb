module Opal
  module Bootbox
  end
end

if RUBY_ENGINE == 'opal'

require 'native'

module Opal
  module Bootbox
    module_function

    def bootbox_call(method, *args, &block)
      Native.call(`bootbox`, method, *args, &block)
    end

    # Creates an alert window.
    # The given block is optional.
    # No result is passed to the given block.
    def alert(*args, &block)
      bootbox_call(__method__, *args, &block)
    end

    # Creates a confirm window.
    # The result passed to given block is true or false.
    # If no block is given then true or false or nil confirmation is returned.
    def confirm(*args, &block)
      if block
        bootbox_call(__method__, *args, &block)
      else
        bootbox_call(__method__, *args) do |result|
          result
        end
      end
    end

    # Creates a prompt window.
    # The result passed to given block is a String or nil.
    # If no block is given then the entered value or nil is returned.
    def prompt(*args, &block)
      if block
        bootbox_call(__method__, *args, &block)
      else
        bootbox_call(__method__, *args) do |value|
          value
        end
      end
    end

  end
end

else # RUBY_ENGINE

  require 'opal'
  require 'opal/bootbox/version'
  Opal.append_path File.expand_path('../..', __FILE__).untaint

end # RUBY_ENGINE

$bootbox = Opal::Bootbox

