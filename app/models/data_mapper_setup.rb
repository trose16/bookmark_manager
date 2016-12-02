require 'dm-migrations'
require 'data_mapper'
require 'dm-postgres-adapter'
require 'dm-validations'

require_relative 'link.rb'
require_relative 'tag.rb'
require_relative 'user.rb'

#DataMapper::Logger.new($stdout, :debug)
DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_upgrade!
