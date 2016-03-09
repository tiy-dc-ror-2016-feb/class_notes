# array = ["first", "second", "third"]
#
# puts array[0]
# puts array[1]
# puts array[2]
# puts array[-1]
#
# array[1] = "2nd"
#
# puts array.to_s

entry = {"name" => "Russell", "number" => "703-999-7754"}  # => {"name"=>"Russell", "number"=>"703-999-7754"}

entry  # => {"name"=>"Russell", "number"=>"703-999-7754"}

entry["name"]    # => "Russell"
entry["number"]  # => "703-999-7754"

entry.keys    # => ["name", "number"]
entry.values  # => ["Russell", "703-999-7754"]


{"Russell" => "703-999", "Bo" => "123-123-1233"}
