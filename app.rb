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
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    str = []
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    str.push(@word1)
    str.push(@word2)
    str.push(@word3)
    str.push(@word4)
    str.push(@word5)
    str.join(" ")
    
    
  end
  
end