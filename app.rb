require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end
  
  get '/square/:number' do
    @number = params[:number]
    "#{@number.to_i ** 2}"
  end
  
  get '/say/:number/:phrase' do 
    str = ""
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times { str += "#{@phrase}\n" }
    str
  end
  
end