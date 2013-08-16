Monster.delete_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'monsters'")