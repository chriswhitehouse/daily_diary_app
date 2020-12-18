require 'pg'

class Diary
  def self.create(entry:)
    db_connection.exec "INSERT INTO entries (entry) VALUES (\'#{entry}\')
                        RETURNING id, entry;"
  end

  private

  def self.db_connection
    if ENV['RACK_ENV'] == 'test'
      PG.connect :dbname => 'daily_diary_test'
    else
      PG.connect :dbname => 'daily_diary'
    end
  end

end
