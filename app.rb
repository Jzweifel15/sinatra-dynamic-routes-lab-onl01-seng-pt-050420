require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end
  
  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number ** 2}"
  end
  
  get '/say/:number/:phrase' do 
    str = ""
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times { str += "#{@phrase}\n" }
    str
  end
  
  get '/say/:number1/:number2/:number3/:number4/:number5' do
    
  end
  
end