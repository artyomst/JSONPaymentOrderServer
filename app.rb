require "sinatra"
require "json"

configure do
  set :bind => "0.0.0.0"
#  set :port => 80
  set :environment, :production
end

get '/' do
  content_type :json
#    [{
{
        :account => 40702840000000000000.to_s,
        :amount => ([true, false].sample ? "+" : "-" ) + (0.01 * (rand(1000000000) + 1)).round(2).to_s,
        :contractoraccount => (40702840000000000001 + rand(100000000000)).to_s,
        :contractorname => [true, false].sample ? "OOO RubyBank" : "OAO StatementBank",
        :date => Time.at(rand(1363434249)).getgm,
        :details => "payment for services",
#        :type => [true, false].sample ? "debet" : "credit",
        :number => rand(1000000000..10000000000).to_s
#        :number => (0...8).map{(65+rand(26)).chr}.join
#        :number => (0..15).map{[(0..9),('A'..'Z')].sample}.join
}.to_json
=begin     }, {
        :account => 40702840000000000000.to_s,
        :amount => rand(1000000) + 1,
        :contractoraccount => (40702840000000000001 + rand(100000000000)).to_s,
        :contractorname => [true, false].sample ? "OOO RubyBank" : "OAO StatementBank",
        :date => Time.at(rand(1363434249)).getgm,
        :details => "payment for services",
        :type => [true, false].sample ? "debet" : "credit",
        :number => rand(1000000000..10000000000).to_s
     }].to_json
=end
end
