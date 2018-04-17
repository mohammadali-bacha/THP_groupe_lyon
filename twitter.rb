#!/usr/bin/env ruby
require 'twitter' #la base, ligne qui appelle la gem twitter sinon le programme ne saura pas appeler Twitter
require 'dotenv/load'

# les lignes suivantes enregistrent les clés d'APIs
client = Twitter::REST::Client.new do |config|
	config.consumer_key        = ENV['consumerkey']
	config.consumer_secret     = ENV['consumersecret']
	config.access_token        = ENV['token']
	config.access_token_secret = ENV['tokensecret']
end




client.user_search('mairie').each do |allo|
  client.follow(allo)
  puts "follow #{allo.name}"
  sleep 3
end
