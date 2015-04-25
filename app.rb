require 'sinatra'
require 'sinatra/activerecord'
require 'shotgun'

set :database, "sqlite3:agency_db.sqlite3"

class Donnees <ActiveRecord::Base
end

# page d'accueil.
get '/' do
	erb :index
end

# affichage des données ajouter à la BdD(db).
get '/liste_inscription' do
	@datas = Donnees.order("created_at DESC")
	erb :liste_inscription
end

# page formulaire.
get '/form' do
	erb :form
end

# ajouter une donnée à la BdD(db).
post '/form' do
	Donnees.create(params)
	redirect '/'
end

