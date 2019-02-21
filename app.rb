require_relative 'config/environment'

class App < Sinatra::Base
  get "/" do
    erb :index
  end

  post "/piglatinize" do
    phrase = params[:user_phrase]
    instance = PigLatinizer.new()
    @pig_latinized = instance.piglatinize(phrase)
    #"#{@pig_latinized}"
    erb :user_input
  end
end
