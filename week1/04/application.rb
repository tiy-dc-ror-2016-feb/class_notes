require_relative './bottle'  # ~> LoadError: cannot load such file -- ./bottle

russells_bottle = Bottle.new(false, 12.8)

russells_bottle.object_id
russells_bottle.empty?
russells_bottle.full?
russells_bottle.open?
russells_bottle.closed?
russells_bottle.amount_of_liquid
russells_bottle.fill_up(10)


nadia_bottle = Bottle.new(true, 18.6)

nadia_bottle.object_id
nadia_bottle.empty?
nadia_bottle.full?
nadia_bottle.open?
nadia_bottle.closed?
nadia_bottle.amount_of_liquid
nadia_bottle.take_sip
nadia_bottle.take_sip
nadia_bottle.amount_of_liquid

# ~> LoadError
# ~> cannot load such file -- ./bottle
# ~>
# ~> /Users/rposborne/.rbenv/versions/2.3.0/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
# ~> /Users/rposborne/.rbenv/versions/2.3.0/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
# ~> /Users/rposborne/Desktop/class/week1/04/application.rb:1:in `<main>'
