require_relative 'hashes'
n = ARGV.map(&:to_i)
data = File.open('hash_data.rb').readlines

hash_data = string_to_hash(data)

n.each do |i|
    puts hash_data.select{|k,v| v==i}.keys
end