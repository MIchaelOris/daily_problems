require 'rubygems'
require 'twilio-ruby'

account_sid = 'AC6ef97e66ca9feb854a93a4434a12fbf5'
auth_token = '67258f2101817a413bc86c1e09e72579'
client = Twilio::REST::Client.new account_sid, auth_token

from = '+12028399755' # Your Twilio number
to = '+17739369755' # Your mobile phone number

client.account.messages.create(
from: from,
to: to,
body: "Hey friend!"
)