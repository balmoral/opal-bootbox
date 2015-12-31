module Opal
  module Bootbox
  end
end

if RUBY_ENGINE == 'opal'

require 'native'

module Opal
  module Bootbox
    module_function

    def bootbox_call(method, arg, &block)
      Native.call(`bootbox`, method, arg.to_n, &block)
    end

    # Creates an alert window.
    # The given block is optional.
    # Method executes asynchronously.
    # No result is passed to the given block.
    def alert(arg, &block)
      bootbox_call(__method__, arg, &block)
    end

    # Creates a confirm window.
    # Method executes asynchronously.
    # The result passed to given block is true or false.
    def confirm(arg, &block)
      bootbox_call(__method__, arg, &block)
    end

    # Creates a prompt window.
    # Method executes asynchronously.
    # The result passed to given block is a String or nil.
    def prompt(arg, &block)
      bootbox_call(__method__, arg, &block)
    end

  end
end

else # RUBY_ENGINE

  require 'opal'
  require 'opal/bootbox/version'
  Opal.append_path File.expand_path('../..', __FILE__).untaint

end # RUBY_ENGINE

$bootbox = Opal::Bootbox

