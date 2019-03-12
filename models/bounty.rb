require('pg')

class Bounty

attr_reader :name, :species, :bounty_value, :homeworld

def initialize( options )
  @name = options['name']
  @species = options['species']
  @bounty_value = options['bounty_value']
  @homeworld = options['homeworld']
end

end # end class
