class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/' do 
    'Hello World'
  end

  get '/movies' do 
    movies = Movie.all 
    movies.to_json
  end

  get '/movies/:id' do 
    Movie.find(params[:id]).to_json
  end

  get '/tickets' do 
    tickets = Ticket.all 
    tickets.to_json
  end

  get '/tickets/:id' do 
    Ticket.find(params[:id]).to_json
  end

end