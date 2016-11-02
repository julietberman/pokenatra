require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

require_relative 'db/connection'
require_relative 'models/pokemon'
require_relative 'models/trainer'



def trainer_push
  trainer_key = []
  @trainers = Trainer.all

  @trainers.each do |trainer|
    obj = {trainer.name => trainer.id}
    trainer_key << obj
  end

  return trainer_key
end


get "/" do
  erb :index
end

get "/pokedex" do
  @pokemon = Pokemon.all
  erb :pokedex
end

get "/catch_new" do
  erb :create_new
end

post "/pokedex" do
  Pokemon.create(params[:pokemon])
  redirect :pokedex
end

get "/pokemon/:id" do
  @pokemon = Pokemon.find(params[:id])
  @trainer = Trainer.find(@pokemon.trainer_id)
  erb :pokemon
end

get "/pokemon/:id/edit" do
  @trainer_kvs = trainer_push
  @pokemon = Pokemon.find(params[:id])
  @trainer = Trainer.find(@pokemon.trainer_id)
  erb :edit
end


put "/pokemon/:id" do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.update!(params[:pokemon])
  redirect "/pokemon/#{@pokemon.id}"
end

delete "/pokedex/:id" do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.destroy
  redirect :pokedex
end


get "/trainers" do
  @trainers = Trainer.all
  erb :trainers
end

get "/trainer/:id" do
  @trainer = Trainer.find(params[:id])
  erb :trainer
end

get "/trainer/:id/edit" do
  @trainer = Trainer.find(params[:id])
  erb :edit_trainer
end

put "/trainer/:id" do
  @trainer = Trainer.find(params[:id])
  @trainer.update(params[:trainer])
  redirect "/trainer/#{@trainer.id}"
end
