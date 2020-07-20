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
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @number3 = params[:number3].to_i
    @number4 = params[:number4].to_i
    @number5 = params[:number5].to_i
  end
  
end