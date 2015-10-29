
require 'twitter'
require 'yaml'

config_file = 'config.yml'
config_yml = YAML.load_file( config_file )

@client = Twitter::REST::Client.new do |config|
  config.consumer_key        = config_yml['consumer']['key']
  config.consumer_secret     = config_yml['consumer']['secret']
  config.access_token        = config_yml['access_token']['token']
  config.access_token_secret = config_yml['access_token']['secret']
end


@client.update( ARGV[0] ) 

