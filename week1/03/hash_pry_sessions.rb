hard_solutions = {
  8 => {
    2 => "H",       # => "H"
    3 => "H",       # => "H"
    4 => "H",       # => "H"
    5 => "DH"       # => "DH"
  }                 # => {2=>"H", 3=>"H", 4=>"H", 5=>"DH"}
}                   # => {8=>{2=>"H", 3=>"H", 4=>"H", 5=>"DH"}}


other_hash = hard_solutions[8][2]  # => "H"
