require 'pry'

def begins_with_r(arr)
    arr.each{|element| return false if element[0] != "r"}
    return true
end

def contain_a(arr)
    arr.select{|element| element.include?("a")}
end

def first_wa(arr)
    arr.find{|element| element[0] == "w" && element[1] =="a"}
end

def remove_non_strings(arr)
    arr.select{|element| element.class == String}
end

def count_elements(arr)
    answer = []
    counts = {}
    arr.each do |hash|
        if counts[hash[:name]]
            counts[hash[:name]] += 1
        else
            counts[hash[:name]] = 1
        end
    end
    counts.each_pair do |key, value|
        answer << {:name => key, :count => value}
    end
    answer
end

def merge_data(d1, d2)
    counter = 0
    new_data = []
    while counter < d1.length
        temp_hash = {}
        d1[counter].each_pair do |key, value|
            temp_hash[key] = value
        end
        d2[counter].each_pair{|key, value| temp_hash[key] = value}
        counter += 1
        new_data << temp_hash
    end
    new_data
end

def find_cool(data)
    data.select{|hash| hash[:temperature] == "cool"}
end

def organize_campuses(data)
    campuses = {}
    data.each_pair do |key, value|
        if campuses[value[:location]]
            campuses[value[:location]] << key
        else
            campuses[value[:location]] = [key]
        end
    end
    campuses
end