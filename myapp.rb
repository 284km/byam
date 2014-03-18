require "rubygems"
require "sinatra/base"
require "json"
# require "haml"
# require 'sinatra/reloader'

class MyApp < Sinatra::Base

#   # auto reload
#   configure :development do
#     register Sinatra::Reloader
#   end

  get '/' do
    "Hello Heroku"
#     haml :index
  end

  get '/test' do
    content_type :json
    return {:sushi => ["Maguro", "Hamachi", "Uni", "Saba", "Ebi", "Sake", "Tai"]}.to_json
  end

end

