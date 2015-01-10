require "sinatra"
require "data_mapper"
#require "pg"

DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/contacts.db")


require "./contact.rb"


get "/" do
    erb :home
end

post "/" do

  contact = Contact.new
  contact.name = params[:name]
  contact.email = params[:email]
  contact.save

  if "#{params[:name]}" == ""
    "Hello #{params[:email]} !"
    #Contact.create(:name '#{params[:name]}', :email '#{params[:email]}')
  else
    "Hello #{params[:name]} !"
    #Contact.create(:name '#{params[:name]}', :email '#{params[:email]}')
  end

end