require 'pg'

class Entry
  attr_reader :id, :title, :entry

  def initialize(id:, title:, entry:)
    @id = id
    @title = title
    @entry = entry
  end

  def self.create(title:, entry:)
    result = db_connection.exec "INSERT INTO entries (title, entry) VALUES (\'#{title}\', \'#{entry}\')
                        RETURNING id, title, entry;"
    Entry.new(id: result[0]['id'].to_i, title: result[0]['title'], entry: result[0]['entry'])
  end

  def self.db_connection
    if ENV['RACK_ENV'] == 'test'
      PG.connect :dbname => 'daily_diary_test'
    else
      PG.connect :dbname => 'daily_diary'
    end
  end

end
