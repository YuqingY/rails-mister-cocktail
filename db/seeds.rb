# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying all"
Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all
puts "adding ingredients"
lemon = Ingredient.create(name: "Lemon", description:"rich in vitamin C and citric acid. It can help brighten and lighten your skin")
ice =Ingredient.create(name: "Ice", description:"cool your drink")
mint = Ingredient.create(name: "Mint Leaves", description:"warm, fresh, aromatic, sweet flavor with a cool aftertaste")
coconut = Ingredient.create(name: "Coconut Milk", description:"sweet, floral, nutty flavor of coconut")
pineapple = Ingredient.create(name: "Pineapple Juice", description:"balances the tastes of sweet and tart")
rum = Ingredient.create(name: "Rum", description:"sugar, spice, and everything nice.")
vodka = Ingredient.create(name: "Vodka", description:"a distilled beverage composed primarily of water and ethanol")
tea = Ingredient.create(name: "Tea", description:"a hot drink made by infusing the dried, crushed leaves of the tea plant in boiling water")
tomato = Ingredient.create(name: "Tomata Juice", description:"Bloody Mary essential")
orange = Ingredient.create(name: "Orange Juice", description:"Freshly squeezed")
apple = Ingredient.create(name: "Apple Juice", description:"balances the tastes of sweet and tart")
coke = Ingredient.create(name: "Coke", description:"a sweetened, carbonated soft drink, derived from drinks that contain caffeine from the kola nut and non-cocaine derivatives from coca leaves, flavored with vanilla and other ingredients")
syrup = Ingredient.create(name: "Syrup", description:"It's never too sweet")
lime = Ingredient.create(name: "Lime Juice", description:"a sour taste")
ginger = Ingredient.create(name: "Ginger Beer", description:"a gingery flavor")
cranberry = Ingredient.create(name: "Cranberry Juice", description:"balances the tastes of sweet and tart")
hot = Ingredient.create(name: "Hot Sauces", description:"burning hot")
worcestershire = Ingredient.create(name: "Worcestershire", description:"a mysterious yet flavorful brown liquid that is a staple in most American kitchens")
coffee = Ingredient.create(name: "Coffee Liqueur", description:"a balance of smooth coffee flavor, sweetness, and booziness")
tonicw =Ingredient.create(name: "Tonic Water", description:"a bitter drink which pairs particularly well with gin")
puts "ingredients added"
puts "adding cocktails"
pina = Cocktail.create(name:"Pina Colada", description:"Hands down the fastest way to achieve tropical vacation mode, the creamy blend of pineapple, coconut, and rum makes everything better.")
pina.photo_url = 'http://res.cloudinary.com/dkzxinlgz/image/upload/c_fill,h_450,w_350/v1502437612/slack-imgs-2_fjjpdd.jpg'
pina.save

cuba = Cocktail.create(name:'Cuba Libre', description:'As simple as a pour of your favorite rum adn coke in a tall glass filled with ice.')
cuba.photo_url = 'http://res.cloudinary.com/dkzxinlgz/image/upload/c_fill,h_450,w_350/v1502437612/slack-imgs_l5v4ej.jpg'
cuba.save

daiquiri = Cocktail.create(name:'Daiquiri', description:'The kind Hemingway enjoyed. The boozy, simple kind. It\'s incredibly hard to mess up, which makes it a simple go-to cocktail to impress your guests at home.')
daiquiri.photo_url = 'http://res.cloudinary.com/dkzxinlgz/image/upload/c_fill,h_450,w_350/v1502437612/slack-imgs-3_m8uswh.jpg'
daiquiri.save

dark = Cocktail.create(name:'Dark \'n Stormy', description:'Ginger beer and lime make just about anything taste good, and seem especially well suited to sweet-and-spicy dark rum.')
dark.photo_url = 'http://res.cloudinary.com/dkzxinlgz/image/upload/c_scale,h_450,w_350/v1502437612/slack-imgs-4_cwoswi.jpg'
dark.save

cosmo = Cocktail.create(name:'Cosmopolitan', description:'Vodka is an ideal base for light fruit flavors and no cocktail plays this up as well as the Cosmopolitan.')
cosmo.photo_url = 'http://res.cloudinary.com/dkzxinlgz/image/upload/c_fill,h_450,w_350/v1502438129/brandy-alcohol-smoke-fire-40592_pop06m.jpg'
cosmo.save

bloody = Cocktail.create(name:'Bloody Mary', description:'Sunday mornings would not be complete without a great Bloody Mary. This vodka and tomato juice highball are a favorite for brunch.')
bloody.photo_url = 'http://res.cloudinary.com/dkzxinlgz/image/upload/c_fill,h_450,w_350/v1502437617/pexels-photo-109275_dikmaf.jpg'
bloody.save

black = Cocktail.create(name:'Black Russian', description:'Should you find yourself looking for a refreshing and short vodka drink, the Black Russian is a perfect candidate.')
black.photo_url = 'http://res.cloudinary.com/dkzxinlgz/image/upload/c_fill,h_450,w_350/v1502437612/pexels-photo-128242_twzwu4.jpg'
black.save

tonic = Cocktail.create(name:'Vodka Tonic', description:'If you are in the mood for a vodka drink that is the ultimate in refreshment, then it\'s time to try a simple soda highball.')
tonic.photo_url = 'http://res.cloudinary.com/dkzxinlgz/image/upload/c_fill,h_450,w_350/v1502437613/pexels-photo-316891_wmua1t.jpg'
tonic.save
puts "cocktails added"
puts "Adding doses"
Dose.create(description:'1 cup', cocktail_id:pina.id , ingredient_id:ice.id)
Dose.create(description:'2 oz', cocktail_id:pina.id , ingredient_id:rum.id)
Dose.create(description:'1 oz', cocktail_id:pina.id , ingredient_id:coconut.id)
Dose.create(description:'3 oz', cocktail_id:pina.id , ingredient_id:pineapple.id)

Dose.create(description:'2 oz', cocktail_id:cuba.id , ingredient_id:rum.id )
Dose.create(description:'4 oz', cocktail_id:cuba.id , ingredient_id:coke.id )
Dose.create(description:'1 cup', cocktail_id:cuba.id , ingredient_id:ice.id )

Dose.create(description:'2 oz', cocktail_id:dark.id , ingredient_id:rum.id )
Dose.create(description:'4 oz', cocktail_id:dark.id , ingredient_id:ginger.id )

Dose.create(description:'2 oz', cocktail_id:daiquiri.id , ingredient_id:rum.id )
Dose.create(description:'1/3 oz', cocktail_id:daiquiri.id , ingredient_id:syrup.id )
Dose.create(description:'1 oz', cocktail_id:daiquiri.id , ingredient_id:lime.id )

Dose.create(description:'1.5 oz', cocktail_id:cosmo.id , ingredient_id:vodka.id )
Dose.create(description:'1 oz', cocktail_id:cosmo.id , ingredient_id:orange.id )
Dose.create(description:'1/2 oz', cocktail_id:cosmo.id , ingredient_id:lime.id )
Dose.create(description:'1/4 oz', cocktail_id:cosmo.id , ingredient_id:cranberry.id )


Dose.create(description:'1.5 oz', cocktail_id:bloody.id , ingredient_id:vodka.id )
Dose.create(description:'3 oz', cocktail_id:bloody.id , ingredient_id:tomato.id )
Dose.create(description:'1/2 oz', cocktail_id:bloody.id , ingredient_id:lime.id )
Dose.create(description:'1 dash', cocktail_id:bloody.id , ingredient_id:worcestershire.id )
Dose.create(description:'To taste', cocktail_id:bloody.id , ingredient_id:hot.id )

Dose.create(description:'1/2 oz', cocktail_id:black.id , ingredient_id:vodka.id )
Dose.create(description:'3/4 oz', cocktail_id:black.id , ingredient_id:coffee.id )
Dose.create(description:'1 cup', cocktail_id:black.id , ingredient_id:ice.id )

Dose.create(description:'1 oz', cocktail_id:tonic.id, ingredient_id:vodka.id)
Dose.create(description:'1 oz', cocktail_id:tonic.id, ingredient_id:lime.id)
Dose.create(description:'2 oz', cocktail_id:tonic.id, ingredient_id:tonicw.id)
Dose.create(description:'1 glass', cocktail_id:tonic.id, ingredient_id:ice.id)

puts "done"



