require_relative '../config/environment.rb'
require 'pry'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console 

s1 = Startup.new("Bob's burgers","Bob", "Bobsburgers.com")
s2 = Startup.new("Dan's","Danny Cole", "maxauto.com")
s3 = Startup.new("Heb","Public traded", "heb.com")

vc1  = VentureCapitalist.new("Big mike", 100000)
vc2  = VentureCapitalist.new("Big steve", 500000)
vc3  = VentureCapitalist.new("Oscar", 255000)
vc4  = VentureCapitalist.new("lil mike", 200000)

#startup, venture_capitalist, type, investment
fr1 = FundingRound.new(s1, vc2, "angel", 500)
fr2 = FundingRound.new(s3, vc3, "seed", 10000)
fr3 = FundingRound.new(s2, vc4, "angel", 5000)

puts s2.founder
# fr2 = s1.sign_contract(vc3, "Series A", 50)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line