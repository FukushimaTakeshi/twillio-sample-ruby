require 'bundler'
Bundler.require
require 'twilio-ruby'

# Get your Account Sid and Auth Token from twilio.com/console
account_sid = 'ACd47fec33b5186a1a24c522e70e967d21'
auth_token = 'e6256ee1619e013f77e67fd92efbd83b'

# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new account_sid, auth_token

call = @client.calls.create(
    to: "+818061400882",
    from: "+815031963578",
    url: "http://demo.twilio.com/docs/voice.xml")
puts call.to
