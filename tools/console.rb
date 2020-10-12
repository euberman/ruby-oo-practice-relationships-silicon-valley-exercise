require_relative '../config/environment.rb'
# require 'pry'

def reload
  load 'config/environment.rb'
end

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
################# SAMPLE DATA ##################
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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



#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#################### TESTS #####################
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#`puts s2.founder
# fr2 = s1.sign_contract(vc3, "Series A", 50)
puts '#######################################################'
puts 'Startup#name, founder, domain, pivot result ~~~~~~~~~~~~~~~~~~~~~~~~~~~'
puts s1.name
puts s2.founder
puts s3.domain
puts s1.pivot("google.com", "Steve")

puts '#######################################################'
puts 'Startup.all ~~~~~~~~~~~~~~~~~~~~~~~~~~~'
puts Startup.all
puts 'Startup.find_by_founder ~~~~~~~~~~~~~~~~~~~~~~~~~~~'
puts Startup.find_by_founder("Steve")
puts 'Startup.domains ~~~~~~~~~~~~~~~~~~~~~~~~~~~'
puts Startup.domains

puts '#######################################################'
puts 'vc1#name, total_worth ~~~~~~~~~~~~~~~~~~~~~~~~~~~'
puts vc1.name 
puts vc2.total_worth
puts 'VentureCapitalist.all, tres_commas_club ~~~~~~~~~~~~~~~~~~~~~~~~~~~'
puts VentureCapitalist.all
puts VentureCapitalist.tres_commas_club



#### FundingRound Class tests
puts '#######################################################'
puts 'fr1.startup ~~~~~~~~~~~~~~~~~~~~~~~~~~~ '
puts "FundingRound #startup: ~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts fr1.startup
puts "FundingRound #venture_capitalist ~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts fr1.venture_capitalist
puts "FundingRound #type ~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts fr1.type
puts "FundingRound #investment ~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts fr1.investment
puts "FundingRound.all ~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts FundingRound.all


puts '#######################################################'
puts "s1.num_funding_rounds ~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts s1.num_funding_rounds
puts "Startup #total_funds ~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts s1.total_funds
puts "Startup #investors ~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts s1.investors
puts "Startup#big_investors ~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts s1.big_investors

puts '######################################################################'
puts "puts vc2.offer_contract(s3, 'series a', 30000.22) result: ~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts vc2.offer_contract(s3, "series a", 30000.22)
puts "puts vc3.offer_contract(s2, 'series b', 30000.22) result: ~~~~~~~~~~~~~~~~~~~~~~~~~~~ "
puts vc3.offer_contract(s2, "series b", 30000.22)
puts 'vc3.funding_rounds ~~~~~~~~~~~~~~~~~~~~~~~~~~~'
puts vc3.funding_rounds
puts 'vc2.portfolio ~~~~~~~~~~~~~~~~~~~~~~~~~~~'
puts vc2.portfolio
puts 'vc2.biggest_investment ~~~~~~~~~~~~~~~~~~~~~~~~~~~'
puts vc2.biggest_investment
puts "vc1.invested('maxauto.com') ~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts vc3.invested("maxauto.com")


# binding.pry
0 #leave this here to ensure binding.pry isn't the last line