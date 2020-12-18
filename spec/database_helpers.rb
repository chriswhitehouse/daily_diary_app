require 'pg'

def persisted_data(id:)
  connection = PG.connect :dbname => 'daily_diary_test'
  result = connection.exec("SELECT * FROM entries WHERE id = #{id};")
  result.first
end
