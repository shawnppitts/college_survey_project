require 'bundler'
Bundler.require
require_relative "./models/model.rb"

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  
  get '/test.erb' do
     erb :test
  end
  
 post '/results' do
   @decision = college_choice(params.values)
   puts params
   
    erb :results
   
  end 
  
  get '/college_list.erb' do
    erb :college_list
  end 
  

end
