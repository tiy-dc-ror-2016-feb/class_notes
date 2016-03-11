# frozen-string-literal: true
"key".object_id  # => 70248053112100
"key".object_id  # => 70248053112100

:key.object_id  # => 254428
:key.object_id  # => 254428


symbol_hash = { key: "value"}  # => {:key=>"value"}

symbol_hash        # => {:key=>"value"}
symbol_hash[:key]  # => "value"


hash = {"key" => "value"}  # => {"key"=>"value"}

hash         # => {"key"=>"value"}
hash["key"]  # => "value"

hash.keys    # => ["key"]
hash.values  # => ["value"]
