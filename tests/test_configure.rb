require_relative '../src/configure.rb'
require "test/unit"

class TestConfigureClass < Test::Unit::TestCase


  def testConnection
    @configureObj = Configure.new

    assert_equal(200, @configureObj.connectionProxy())

  end

end
