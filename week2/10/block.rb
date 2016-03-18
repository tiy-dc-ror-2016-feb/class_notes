def do_the_block
  p "Before the block"                                                                   # => "Before the block"
  yield("I AM THE BLLOOOOOOOOOCH", 2, "BLOCKS ON BLOCKS",  "DEEEE BLOCKS", "Dumm Dumm")
  p "After the block"
end                                                                                      # => :do_the_block

do_the_block { |a,b,c,d| p a; p b; p c; p d; p e }  # ~> NameError: undefined local variable or method `e' for main:Object

def do_the_block(x)
  p "Before the block"                                                                   # => "Before the block"
  yield(x)
  p "After the block"
end                                                                                      # => :do_the_block

do_the_block(2) { |thing| thing + 2 }  # ~> NameError: undefined local variable or method `e' for main:Object


# >> "Before the block"
# >> "I AM THE BLLOOOOOOOOOCH"
# >> 2
# >> "BLOCKS ON BLOCKS"
# >> "DEEEE BLOCKS"

# ~> NameError
# ~> undefined local variable or method `e' for main:Object
# ~>
# ~> /Users/rposborne/Desktop/class/week2/10/block.rb:7:in `block in <main>'
# ~> /Users/rposborne/Desktop/class/week2/10/block.rb:3:in `do_the_block'
# ~> /Users/rposborne/Desktop/class/week2/10/block.rb:7:in `<main>'
