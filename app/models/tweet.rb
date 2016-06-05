require 'grackle'
require 'twitter'
require 'rubygems'

class Tweet < ActiveRecord::Base

  MY_APPLICATION_NAME = "adoptapetcom"
  
  """Connect to the Twitter API and pull down the latest tweets"""
  def self.get_latest
    tweets = client.statuses.user_timeline? :screen_name =>  MY_APPLICATION_NAME # hit the API
    tweets.each do |t|
      created = DateTime.parse(t.created_at)
      # create the tweet if it doesn't already exist
      unless Tweet.exists?(["created=?", created])
        Tweet.create({:content => t.text, :created => created })
       end
    end
  end
  
  private
  def self.client
    Grackle::Client.new(:ssl=>true, :auth=>{
      :type=>:oauth,
      :consumer_key=>'IWayYUn2K5iZwhFSYuC0hlGUF',
      :consumer_secret=>'E3yIGUb7pi8jwGGxiJF8YJmY3QqmZtf8HkVtc7GGyXcFCIX43M',
      :token=>"164589007-obEvKFP0hT2jeH2KuI4CJLBug3by2xNexaW4xNjH",
      :token_secret=>"3y7Cw0wh7mLN83EtDabhhzctl01BbbQsBfmp62Il40AQT"
    })

  end
end