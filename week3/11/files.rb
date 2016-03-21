require 'csv'  # => true

CSV.open("/Users/rposborne/Desktop/class/week3/11/data.txt") do |f|  # => CSV
  f.each do |line|                                                   # => <#CSV io_type:File io_path:"/Users/rposborne/Desktop/class/week3/11/data.txt" encoding:UTF-8 lineno:0 col_sep:"," row_sep:"\n" quote_char:"\"">
    p line                                               # ~> NoMethodError: undefined method `split' for #<Array:0x007fb7e9159e08>
  end

end

# ~> NoMethodError
# ~> undefined method `split' for #<Array:0x007fb7e9159e08>
# ~>
# ~> /Users/rposborne/Desktop/class/week3/11/files.rb:5:in `block (2 levels) in <main>'
# ~> /Users/rposborne/.rbenv/versions/2.3.0/lib/ruby/2.3.0/csv.rb:1748:in `each'
# ~> /Users/rposborne/Desktop/class/week3/11/files.rb:4:in `block in <main>'
# ~> /Users/rposborne/.rbenv/versions/2.3.0/lib/ruby/2.3.0/csv.rb:1282:in `open'
# ~> /Users/rposborne/Desktop/class/week3/11/files.rb:3:in `<main>'
