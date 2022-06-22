require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do

        erb :user_input
    end

    post '/piglatinize' do
        @newpl = PigLatinizer.new
        @piglatinized_word = @newpl.piglatinize(params[:user_phrase])
        erb :display
    end


end