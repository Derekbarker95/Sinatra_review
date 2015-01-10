
class Contact
  include DataMapper::Resource

  property :id, Serial
  property :name, String
  property :email, String

end

DataMapper.finalize 