require "sinatra"
require "rerun"


get "/" do
    erb :home
end

post "/" do

  if "#{params[:name]}" == ""
    "Hello #{params[:email]} !"
  else
    "Hello #{params[:name]} !"
  end

end