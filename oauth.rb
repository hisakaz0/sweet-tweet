
require 'oauth'
require 'oauth/consumer'
require 'yaml'
require "io/console"
require 'readline'

config_file = 'config.yml'
config_yml = YAML.load_file( config_file )

@consumer=OAuth::Consumer.new(
  config_yml['consumer']['key'],
  config_yml['consumer']['secret'], {
    :site=>"https://api.twitter.com"
  })
@request_token=@consumer.get_request_token


puts 'ACCESS TOKEN URL: ' + @request_token.authorize_url
pincode =  Readline.readline("PINCODE: ")
@access_token = @request_token.get_access_token( :oauth_verifier => pincode )
puts 'ACCESS TOKEN: ' + @access_token.token
puts 'ACCESS TOKEN SECRET: ' + @access_token.secret

