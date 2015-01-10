require "sinatra"
require "data_mapper"
#require "pg"

DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/contacts.db")


require "./contact.rb"


get "/" do
    @contacts=Contact.all.reverse
    erb :home
end

post "/" do
  @contacts=Contact.all.reverse
  contact = Contact.new
  contact.name = params[:name]
  contact.email = params[:email]
  contact.save


  #.create(:name '#{params[:name]}', :email '#{params[:email]}')
  
  erb :home

end