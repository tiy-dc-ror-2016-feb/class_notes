class Foo

end  # => nil

foo = Foo.new  # => #<Foo:0x007fabd4128748>

0.object_id      # => 1
1.object_id      # => 3
2.object_id      # => 5
20938.object_id  # => 41877

foo_from_mem = ObjectSpace._id2ref(0)  # => false


machine_bytes = ['foo'].pack('p').size
machine_bits = machine_bytes * 8
machine_max_signed = 2**(machine_bits-1) - 1
machine_max_unsigned = 2**machine_bits - 1
