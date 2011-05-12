require 'fileutils'
require 'test/unit'
require 'mocha'

shoulda_path = File.join(File.dirname(__FILE__), '..', 'lib')
$LOAD_PATH << shoulda_path
require "shoulda/context"

Shoulda.autoload_macros File.join(File.dirname(__FILE__), 'fake_rails_root'),
                        File.join("vendor", "{plugins,gems}", "*")

if defined?(::MiniTest)
  class MiniTest::Unit::TestCase
    def to_s
      __name__
    end
  end
end
