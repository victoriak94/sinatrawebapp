

require 'sinatra'

get '/home' do
  erb :index
end

get '/' do
  redirect to('/home')
end

get '/portfolio' do
  erb :gallery
end

get '/gallery' do
  redirect to ('/portfolio')
end

get '/about_me' do
  @skills = ['git', 'HTML', 'CSS', 'Ruby']
  @interests = ['cats', 'art', 'music', 'films', 'coffee']
  erb :about
end

get '/favourites' do
  @fav_links = {"https://crackmagazine.net/": 'Crack Magazine', "https://djbooth.net/": 'DJ Booth'}
  erb :favourites
end
