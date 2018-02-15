require 'twitter'
require 'dotenv'

Dotenv.load

class Sendtweet



  def initialize(string)


  end

  def perform

  end


  def log_in_to_twitter

    @client = Twitter::REST::Client.new do |config|
      config.consumer_key = ENV["CONSUMER_KEY"]
      config.consumer_secret = ENV["CONSUMER_SECRET"]
      config.access_token = ENV["ACCESS_TOKEN"]
      config.access_token_secret = ENV["ACCESS_TOKEN_SECRET"]
    end
  end

  def send_tweet

  end

end
