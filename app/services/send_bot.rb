require 'twitter'

class SendBot

  def initialize(string)
  @string = string
  end

  def log_in_twitter
  @client = Twitter::REST::Client.new do |config|
   config.consumer_key        = "8rDZMpWVz8m4nDbx0odZtdipD"
    config.consumer_secret     = "eTubc0tStgBtogp4YfYRnIc8aEOy13ujvgZAL43kXBpMJWtFFw"
    config.access_token        = "918082218093961216-a8ReUa1hVa5jgRPve0RFDrG1mcumdjf"
    config.access_token_secret = "quI9mahBJI1CrZyNMJl3kM5UuFETiye5Ezfy4PXKbgASy"
  end
end



  def perform
    log_in_twitter
    @client.update(@string)
  end
end
