# your code goes here
### `begins_with_r`

def begins_with_r(arr)
    arr.all?{ |item|
        item.start_with?("r")
    }
end


# ### `contain_a`

def contain_a(arr)
    arr.find_all{ |element|
        element.include?("a")
    }
end



# ### `first_wa`

def first_wa(arr)
    arr.find{ |item|
        item.to_s.start_with?("wa")
    }
end





# ### `remove_non_strings`

def remove_non_strings(arr)
    arr.find_all{ |element|
        element === element.to_s
    }
end



# ### `count_elements`

def count_elements(arr)
    upd = arr.uniq
    upd.map { |element|
        element[:count] = arr.select{|item| item == element}.length
        
    }
    upd

end



# ### `merge_data`

def merge_data(arr1, arr)

    arr1.each_with_index { |hash1, index|
        arr1[index].merge!(arr[index])
    }

end



# ### `find_cool`

def find_cool(arr)
    arr.find_all{ |value|
        value[:temperature] == "cool"
    }
end

def organize_campuses(campuses)
    states = {}
    campuses.each { |key, value|
        if states.key?(value[:location])
            states[value[:location]] << key
        else 
            states .merge!({value[:location] => [key]})
        end
    }
    states
end

# ### `organize_campuses`

# The `organize_campuses` method takes in a hash containing the names of some
# Flatiron School campuses as keys. These keys each point to a hash containing a
# `:location` pointing to the US state they are in. This method should create a
# new hash where instead of campus names, the US state value is the 'top-level'
# key. This key should point to an array containing each of the campus names that
# are located in that state.

# For example, if we were to run:

# ```ruby
# campus_hash = {
#   "Flatiron School San Francisco" => {
#     :location => "CA"
#   },
#   "Access Labs" => {
#     :location => "NY"
#   },
#   "Flatiron School Seattle" => {
#     :location => "WA"
#   },
#   "Flatiron School Manhattan" => {
#     :location => "NY"
#   }
# }

# organize_campuses(campus_hash)
# ```

# Will result in:

# ```ruby
# {
#   "CA"=>["Flatiron School San Francisco"],
#   "NY"=>["Access Labs", "Flatiron School Manhattan"],
#   "WA"=>["Flatiron School Seattle"]
# }
# ```
