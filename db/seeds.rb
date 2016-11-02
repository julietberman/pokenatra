require 'active_record'
require 'ffaker'
require 'pg'
require_relative 'connection'
require_relative '../models/pokemon'
require_relative '../models/trainer'

Pokemon.destroy_all
Trainer.destroy_all

ash = Trainer.create(name: "Ash Ketchum", level: 21, battles_won: 178, img_url: "http://vignette2.wikia.nocookie.net/pokemon/images/7/7a/Hoennash.png/revision/latest?cb=20110507193011")
brock = Trainer.create(name: "Brock Takeshi", level: 16, battles_won: 96, img_url: "http://static.comicvine.com/uploads/original/8/89742/1646151-wah3.jpg")
misty = Trainer.create(name: "Misty Kasumi", level: 19, battles_won: 113, img_url: "http://images3.wikia.nocookie.net/__cb20120605044520/es.pokemon/images/6/63/Misty_(anime).png")



Pokemon.create(name: "Charmander", cp: rand(800), poke_type: "fire", img_url: "http://vignette3.wikia.nocookie.net/es.pokemon/images/a/a4/Charmander_(anime_AG).png/revision/latest?cb=20120906023057", trainer_id: ash.id)

Pokemon.create(name: "Squirtle", cp: rand(800), poke_type: "water", img_url: "http://vignette1.wikia.nocookie.net/pokemonfakemon/images/e/ec/Squirtle_Dream.png/revision/latest?cb=20110530041702", trainer_id: brock.id)

Pokemon.create(name: "Pikachu", cp: rand(800), poke_type: "lightning", img_url: "http://orig00.deviantart.net/0806/f/2012/244/6/b/profile_picture_by_pikachu_song-d5d91ua.png", trainer_id: misty.id)

Pokemon.create(name: "Bulbasaur", cp: rand(800), poke_type: "grass", img_url: "http://vignette1.wikia.nocookie.net/pokemon/images/b/b8/001Bulbasaur_Dream.png/revision/latest?cb=20140903033758", trainer_id: ash.id)

Pokemon.create(name: "Clefairy", cp: rand(800), poke_type: "fairy", img_url: "http://assets.pokemon.com/assets/cms2/img/pokedex/full/035.png", trainer_id: ash.id)

Pokemon.create(name: "Nidoking", cp: rand(800), poke_type: "poison ground", img_url: "http://i903.photobucket.com/albums/ac234/GVSG/Pokemon%20PNGs/Nidoking.png", trainer_id: misty.id)

Pokemon.create(name: "Gengar", cp: rand(800), poke_type: "ghost poison", img_url: "http://orig02.deviantart.net/7ca2/f/2010/004/b/d/gengar_by_xous54.png", trainer_id: brock.id)

Pokemon.create(name: "Blastoise", cp: rand(800), poke_type: "water", img_url: "http://vignette2.wikia.nocookie.net/es.pokemon/images/f/f9/Blastoise_en_Pok%C3%A9mon_Mundo_Misterioso.png/revision/latest?cb=20090703112532", trainer_id: misty.id)
