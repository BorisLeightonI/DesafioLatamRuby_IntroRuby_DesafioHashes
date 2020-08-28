# data_=File.open('hash_data.rb').readlines

# puts data_[1].split(':')[0].strip
# hash1 = { + data_[1].split(',')[0].strip + }

def string_to_hash(datos)
    
    hash1={}
    for i in 1..12 do
        n1 = datos[i].split(':')[0].delete(' ')
        n2 = datos[i].split(':')[1].delete(' ').split(',')[0]
        hash1[n1]=n2.to_i    
    end
    hash1
end


# puts string_to_hash()


# puts hash1.class
# puts hash1

  