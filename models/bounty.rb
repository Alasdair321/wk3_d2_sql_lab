require('pg')

class Bounty

attr_accessor :name, :species, :bounty_value, :homeworld

def initialize( options )
  @id = options['id'].to_i if options['id']
  @name = options['name']
  @species = options['species']
  @bounty_value = options['bounty_value']
  @homeworld = options['homeworld']
end

def save
  db = PG.connect({dbname: 'bounties', host: 'localhost'})
  sql = "INSERT INTO bounty_table (
    name, species, bounty_value, homeworld
    ) VALUES (
      $1, $2, $3, $4
      ) RETURNING id;"
  values = [@name, @species, @bounty_value, @homeworld]
  db.prepare('insert_row_sql', sql)
  array_of_hash_id = db.exec_prepared('insert_row_sql', values)
  @id = array_of_hash_id[0]['id']
  db.close
end

def update
  db = PG.connect({dbname: 'bounties', host: 'localhost'})
  sql = "UPDATE bounty_table SET (
    name, species, bounty_value, homeworld
    ) = (
      $1, $2, $3, $4
      ) WHERE id = $5;"
  values = [@name, @species, @bounty_value, @homeworld, @id]
  db.prepare('update_row_sql', sql)
  db.exec_prepared('update_row_sql', values)
  db.close
end

def delete
  db = PG.connect({dbname: 'bounties', host: 'localhost'})
  sql = "DELETE FROM bounty_table WHERE id = $1;"
  values = [@id]
  db.prepare('delete_row_sql', sql)
  db.exec_prepared('delete_row_sql', values)
  db.close
end

def Bounty.delete_all
  db = PG.connect({dbname: 'bounties', host: 'localhost'})
  sql = "DELETE FROM bounty_table;"
  db.prepare('delete_all_rows_sql', sql)
  db.exec_prepared('delete_all_rows_sql')
  db.close
end

end # end class
