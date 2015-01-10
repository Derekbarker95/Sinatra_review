require "sinatra"


get "/" do
    "<h1>Home<h1>"
    erb :home
end