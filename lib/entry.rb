require 'pg'

class Entry
  attr_reader :id, :entry

  def initialize(id:, entry:)
    @id = id
    @entry = entry
  end

  def self.create(entry:)
    result = db_connection.exec "INSERT INTO entries (entry) VALUES (\'#{entry}\')
                        RETURNING id, entry;"
    Entry.new(id: result[0]['id'].to_i, entry: result[0]['entry'])
  end

  def self.db_connection
    if ENV['RACK_ENV'] == 'test'
      PG.connect :dbname => 'daily_diary_test'
    else
      PG.connect :dbname => 'daily_diary'
    end
  end

end
