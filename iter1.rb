require_relative 'hashes'
data = File.open('hash_data.rb').readlines

hash_data = string_to_hash(data)

# hash_data.each do |k,v|

# end

puts hash_data.select{|k,value| value>45000}.values