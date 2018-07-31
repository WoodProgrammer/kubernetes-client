require "http"

class Configure

  attr_reader :kubernetesUrl

  def initialize
    @kubernetesUrl = ENV["kubernetesUrl"]
  end


  def getKubernetesUrl
    return @kubernetesUrl
  end

  def connectionProxy

    statusCode = HTTP.get(@kubernetesUrl.to_s).status
    return statusCode

  end
end
