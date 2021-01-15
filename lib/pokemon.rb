require 'pry'

class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize(id: nil, name:, type:, db:)
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    binding.pry
    db.execute("INSERT INTO pokemon (name, type) VALUES (name, type)")
    # db.execute("INSERT INTO pokemon (name, type, db) VALUES (name, type, @db)")
    @id = "SELECT last_insert_rowid() FROM pokemon)[0][0]"

    # DB[:conn].execute(sql, name, type, db)
    # @id = DB[:conn].("SELECT last_insert_rowid() FROM pokemon")[0][0]
  end
end
