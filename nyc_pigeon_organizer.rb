require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  data.each do |key, inner_hash|
    #values are the pigeon names
    inner_hash.values.flatten.each do |name|
      #setting the names of the pigeons as keys with empty hashes
      if !new_hash[name]
        new_hash[name] = {}
      end
      if !new_hash[name][key] 
          new_hash[name][key] = []
      end
    end
    inner_hash.each do |key_values, names|
        new_hash.each do |name, pigeon_hash|
          if names.include?(name)
            new_hash[name][key] << key_values.to_s && !new_hash[name][key].include?(key_values.to_s)
          end
        end
        # if test[1].include?(name) && !new_hash[name][key].include?(test[0])
        #   new_hash[name][key] << test[0]
        # end
    end
  end
  new_hash
end