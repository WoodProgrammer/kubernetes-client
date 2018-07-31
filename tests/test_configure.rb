require_relative '../src/configure.rb'
require "test/unit"

class TestConfigureClass < Test::Unit::TestCase

  def testgetKubernetesUrl
    @configureObj = Configure.new

    assert_equal("https://127.0.0.1:8080/", @configureObj.getKubernetesUrl())
  end

  def testConnection
    @configureObj = Configure.new
    
    assert_equal(200, @configureObj.connectionProxy())
  end

end
