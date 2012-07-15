require 'sinatra'
# require './eightball.rb'

get '/' do
  erb :frontpage
end

post '/form' do
  question = params[:question]
  output = response
  erb answer
end

post '/answer' do
  this_answer = ball_answer
  erb this_answer
end

def ball_answer
  response_array = ["Signs point to yes",
                    "Signs point to no",
                    "AHAHAHAHA!",
                    "Outlook is positive",
                    "No way Jose!"]
  response_num = rand(response_array.length)
  response_array[response_num]
end