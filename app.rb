require_relative 'config/environment'
require_relative 'piglatinizer.rb'

class App < Sinatra::Base
    get '/' do
        erb :user_input 
    end

    post '/pig' do 
        erb :display_pig_latin
    end
end