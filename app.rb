require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = param[:name]
    split_name = @name.split(//)
    reversed_name = []
    split_name.length.times do 
      reversed_name.push()
    end
  end
  
end