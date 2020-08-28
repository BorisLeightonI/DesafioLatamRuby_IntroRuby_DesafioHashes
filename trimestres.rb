require_relative 'hashes'
n = ARGV.map(&:to_i)
data = File.open('hash_data.rb').readlines

hash_data = string_to_hash(data)

# hash_data.each_with_index do |(k,v),i|
#     puts "Clave #{k} valor #{v} índice #{i+1}"
# end

# hash_array = hash_data.each_slice(3){|a| p a}.to_a
# print hash_data
quartiles = {}
clave = "Q"
i = 1
hash_data.each_slice(3) do |x|
    aux = 0
    x.each do |y|
        aux += y[1]
        # p y
    end
    # p aux
    quartiles['Q'+i.to_s] = aux
    i += 1
end

puts quartiles
