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

  # bounty2.save
  # bounty2.delete

  bounty1.save

  bounty1.name = 'Rotta the Hutt'
  bounty1.update

# Bounty.delete_all
