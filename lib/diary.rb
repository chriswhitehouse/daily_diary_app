require 'pg'

class Diary
  def self.create(entry:)
    if ENV['RACK_ENV'] == 'test'
      connection = PG.connect :dbname => 'daily_diary_test'
    else
      connection = PG.connect :dbname => 'daily_diary'
    end

    connection.exec "INSERT INTO entries (entry) VALUES (\'#{entry}\')
                    RETURNING id, entry;"

  end
end
