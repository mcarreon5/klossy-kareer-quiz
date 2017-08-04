require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
   post '/' do
     
   
    this_career = Career.new(params)
    this_career.question1
    this_career.question2
    this_career.question3
    this_career.question4
    this_career.question5
    
    
    @answer = this_career.final_results
    @result_pic = this_career.get_results(@answer)
    
    erb :results
  end 


  # post '/' do
  #   job_application=params[:ageofuser][:type_of_job]
  #   @job_recommended = user_age(job_application)
  # end 




end
