#!/usr/share/rvm/rubies/ruby-2.6.3/bin/ruby
str="e0a2b3a1b10c90d3d4"
arrL=str.split(/[0-9]*/)
arrN=str.split(/[a-z]/)
h={}

for i in 0..arrL.length-1 do
	h[arrL[i]]=(h.include?(arrL[i]))?h[arrL[i]].to_i + arrN[i+1].to_i : arrN[i+1]
end

h.each do |key,value|
	next if value=="0"
	puts  "#{key} : #{value}"
end

str1="avinash.@joshsoftware.com"
if str1.match(/^[a-z]+\d*\.*\w*+@\w+\.com$/)
	puts "valid email"
else
	puts "invalid email"
end

str2="123.43.23.1"
arrip=str2.split(".")


if arrip.include?(/^[0-9]+$/) && arrip.length==4 && arrip[0].to_i<=255 && arrip[1].to_i<=255 && arrip[2].to_i<=255 && arrip[3].to_i<=255
	puts "valid ip"
else
	puts "invalid ip"
end



