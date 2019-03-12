require_relative('models/bounty')

bounty1 = Bounty.new( {
  'name'=>'Jabba the Hutt',
  'species'=>'Hutt',
  'bounty_value'=> 23452345245,
  'homeworld'=> 'Nal Hutta'
  })

  bounty2 = Bounty.new( {
    'name'=>'Darth Sidious',
    'species'=>'Human Sith',
    'bounty_value'=> 191970,
    'homeworld'=> 'Naboo'
    })

# Bounty.delete_all

# bounty1.save
#   bounty2.save
#
# name_to_find = 'Darth Sidious'
name_to_find = 'Darth Vader'
# p Bounty.find_by_name( name_to_find )
# id_to_find = 15
id_to_find = 1

p Bounty.find_by_id(id_to_find)
  # bounty2.delete


  # bounty1.name = 'Rotta the Hutt'
  # bounty1.update

# Bounty.delete_all
