require 'data_mapper'
require 'dm-postgres-adapter'
require 'dm-migrations'

class Link

  include DataMapper::Resource

  property :id, Serial
  property :name, String
  property :url, String

  has n, :tags, through: Resource

end
