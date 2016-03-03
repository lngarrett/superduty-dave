#!/usr/bin/env ruby
require 'sinatra'
require 'sinatra/flash'

set :server, 'thin'
set :bind, '0.0.0.0'
set :port, '8080'

$points = File.read("points").to_i

post '/dave/:value' do
  $points += params['value'].to_i
  File.write('points', $points)
  redirect "/"
end

get '/' do
  erb :index, locals: {points: $points}
end

get '/points' do
  $points.to_s
end
