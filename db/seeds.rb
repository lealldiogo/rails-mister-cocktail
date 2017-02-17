# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cocktail.destroy_all
Dose.destroy_all
Ingredient.destroy_all


lemon = Ingredient.new(name: "lemon")
ice = Ingredient.new(name: "ice")
mint_leaves = Ingredient.new(name: "mint leaves")
cachaca = Ingredient.new(name: "cachaça")
rum = Ingredient.new(name: "rum")
orange_juice = Ingredient.new(name: "orange juice")
cran_juice = Ingredient.new(name: "cranberry juice")
vodka = Ingredient.new(name: "vodka")

lemon.save
ice.save
mint_leaves.save
cachaca.save
rum.save
orange_juice.save
cran_juice.save
vodka.save

mojito = Cocktail.new(name: "Mojito")
caipirinha = Cocktail.new(name: "Caipirinha")
sotb = Cocktail.new(name: "Sex on the Beach")
quartinho = Cocktail.new(name: "Quartinho")

url_m = "https://uk.thebar.com/assets/en-gb/Images/AY/34660_dia_1425_950_don_julio_mojito_37_$$069A0000001gyNVIAY.jpg?maxheight=950&maxwidth=1425&quality=80"
mojito.remote_photo_url = url_m
mojito.save
url_c = "https://www.petiscobrazuca.com/wp-content/uploads/2016/06/Capirinha-new-york.png"
caipirinha.remote_photo_url = url_c
caipirinha.save
url_s = "https://www.comofaz.com.br/img/item/449.jpg"
sotb.remote_photo_url = url_s
sotb.save
url_q = "http://www.cachacaguaraciaba.com.br/wp-content/uploads/2012/03/pinga.jpg"
quartinho.remote_photo_url = url_q
quartinho.save

Dose.create({
  description: "Caipirinha is made with 3/4 of a lemon",
  ingredient_id: lemon.id,
  cocktail_id: caipirinha.id
  })
Dose.create({
  description: "Caipirinha is made with three ice cubes",
  ingredient_id: ice.id,
  cocktail_id: caipirinha.id
  })
Dose.create({
  description: "Caipirinha is made with 5cl of cachaça",
  ingredient_id: cachaca.id,
  cocktail_id: caipirinha.id
  })
Dose.create({
  description: "You will need half a lemon to make a Mojito",
  ingredient_id: lemon.id,
  cocktail_id: mojito.id
  })
Dose.create({
  description: "You will need 7 mint leaves to make a Mojito",
  ingredient_id: mint_leaves.id,
  cocktail_id: mojito.id
  })
Dose.create({
  description: "You will need 4cl of rum to make a Mojito",
  ingredient_id: rum.id,
  cocktail_id: mojito.id
  })
Dose.create({
  description: "You will need three ice cubes to make a Mojito",
  ingredient_id: ice.id,
  cocktail_id: mojito.id
  })
Dose.create({
  description: "Use 15cl of orange juice to prepare a Sex on the Beach",
  ingredient_id: orange_juice.id,
  cocktail_id: sotb.id
  })
Dose.create({
  description: "Use 15cl of cranberry juice to prepare a Sex on the Beach",
  ingredient_id: cran_juice.id,
  cocktail_id: sotb.id
  })
Dose.create({
  description: "Use 6cl of vodka to prepare a Sex on the Beach",
  ingredient_id: vodka.id,
  cocktail_id: sotb.id
  })
Dose.create({
  description: "Use two ice cubes to prepare a Sex on the Beach",
  ingredient_id: ice.id,
  cocktail_id: sotb.id
  })
Dose.create({
description: "Bota um copo americano de cachaça e vira pai",
ingredient_id: cachaca.id,
cocktail_id: quartinho.id
  })
Dose.create({
description: "Depois, um limãozin pra aliviar",
ingredient_id: lemon.id,
cocktail_id: quartinho.id
})
