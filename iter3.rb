require_relative 'hashes'
data = File.open('hash_data.rb').readlines

hash_data = string_to_hash(data)

def filter(hash_in, lim_inf)
    hash_in.select{|k,value| value>lim_inf}
end

puts filter(hash_data,45000)