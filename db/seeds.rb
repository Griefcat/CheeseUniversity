# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#3 instructors
CheeseRecipe.destroy_all
Cheese.destroy_all
Course.destroy_all
Instructor.destroy_all

cheese1 = Cheese.create(name: "Mozzarella", cheese_type: "fresh cheese", description: "Mozzarella (English: /ˌmɒtsəˈrɛlə/, Italian: [mottsaˈrɛlla]; Neapolitan: muzzarella [muttsaˈrɛllə]) is a traditionally southern Italian cheese made from Italian buffalo's milk by the pasta filata method. Fresh mozzarella is generally white but may vary seasonally to slightly yellow depending on the animal's diet.[1] Due to its high moisture content, it is traditionally served the day after it is made[2] but can be kept in brine for up to a week[3] or longer when sold in vacuum-sealed packages. Low-moisture mozzarella can be kept refrigerated for up to a month,[4] though some shredded low-moisture mozzarella is sold with a shelf life of up to six months.[5] Mozzarella of several kinds is used for most types of pizza and several pasta dishes or served with sliced tomatoes and basil in Caprese salad.",
image: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Mozzarella_di_bufala3.jpg/440px-Mozzarella_di_bufala3.jpg")

cheese2 = Cheese.create(name: "Manchego", cheese_type: "hard cheese", description: "Manchego (officially Spanish: queso manchego, pronounced [ˈkeso maɲˈtʃeɣo]) is a cheese made in the La Mancha region of Spain from the milk of sheep of the Manchega breed. It is aged between 60 days and 2 years.

Manchego has a firm and compact consistency and a buttery texture, and often contains small, unevenly distributed air pockets. The colour of the cheese varies from white to ivory-yellow, and the inedible rind from yellow to brownish-beige. The cheese has a distinctive flavour, well developed but not too strong, creamy with a slight piquancy, and leaves an aftertaste that is characteristic of sheep's milk.

The designation queso manchego is protected under Spain's denominación de origen regulatory classification system,[2] and the cheese has been granted Protected Designation of Origin (PDO) status by the European Union.[3]", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Manchego.jpg/440px-Manchego.jpg")

cheese3 = Cheese.create(name: "Brie", cheese_type: "semi soft", description: "Brie (/briː/; French: [bʁi]) is a soft cow's-milk cheese named after Brie, the French region from which it originated (roughly corresponding to the modern département of Seine-et-Marne). It is pale in color with a slight grayish tinge under a rind of white mould. The rind is typically eaten, with its flavor depending largely upon the ingredients used and its manufacturing environment. It is similar to Camembert, which is native to a different region of France.", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Brie_01.jpg/440px-Brie_01.jpg")

instructor1 = Instructor.create(instructor_name: "Waldemar Albrecht", specialty: "Fresh cheese", email: Faker::Internet.email, biography: "Waldemar Albrecht studied law and business administration in his native Venezuela. After immigrating to the US to follow his passion for gastronomy and culinaria, he received training in cheese from industry leaders like Debra Dickerson, Janet Tarlov, Daphne Zepos, and Juliana Uruburu. Managing the cheese counter at the acclaimed Pasta Shop from 1998 through 2002. In May 2003, Waldemar moved to New York City to become a full time Maitre Fromager at Artisanal restaurant, as well as member of the faculty at Artisanal Premium Cheese, nurturing his education through his mentor and friend Max McCalman. Currently, Waldemar works as a spokesperson for Lactalis-USA, conducts food tours with friend and partner Clarisa Penzini, and is the cheese buyer for the Battery Place Markets in Manhattan.", image_url: "https://cdn.shopify.com/s/files/1/0307/2417/files/Waldemar_Albrecht.jpg?1744" )

instructor2 = Instructor.create(instructor_name: "Kirstin Jackson", specialty: "Semi-soft cheese", email: Faker::Internet.email, biography: "Kirstin Jackson is the author of \'Its Not You, Its Brie: A Guide to Unwrapping American Cheese Culture\' and has written about cheese and wine for publications like the LA Times, NPR, and Kinfolk. When not writing, she manages a wine bar, teaches, consults, travels, and writes about cheese for her blog, itsnotyouitsbrie.com. She blames her parents, who took her on monthly trips to California creameries as a child, for inspiring her obsession with cheese.", image_url: "https://cdn.shopify.com/s/files/1/0307/2417/files/Kristin_Jackson.jpg?1789")

recipe1 = CheeseRecipe.create(name: "Eggplant Rollatini", ingredients: "

1 large eggplant, sliced into 1/2-inch thick slices
1 cup each chopped zucchini, mushroom & bell pepper
1 tablespoon olive oil
1 cup filling cheese of choice
1 egg
2 garlic cloves, minced
1/2 teaspoon each & black pepper, more to taste
2 1/2 cups tomato sauce (optional)
1 cup mozzarella cheese
2 tablespoon fresh parsley, chopped",
directions: "Preheat the oven to 400F. Carefully slice eggplant into 1/2-inch thick slices. Salt on both sides and let sit to “sweat” for 10 minutes – this is to avoid a watery eggplant rollatini. Pat dry with a paper towel and wipe off remaining salt.
Lay eggplant on a lightly greased pan and bake for 10 minutes. Remove and let cool.
While eggplant is baking, rough chop mushrooms, zucchini, and bell pepper. Add oil to the pan and sautee mixture until soft. Finish with garlic and continue stirring.
Let the mixture cool, then add filling cheese and egg to bind.
Add tomato sauce to the bottom of your baking dish.
After the eggplant has cooled, spoon 1-2 Tablespoons of vegetable filling on eggplant, then roll and lay in a baking dish with sauce. Repeat until finished.
Spoon sauce over eggplant, sprinkle with mozzarella. Cover and bake for 30 minutes, then uncover and bake for 10 minutes. 
", cheese_id: cheese1.id, image: "https://cdn.shopify.com/s/files/1/0307/2417/files/55ED29C4-9970-471D-8CB0-38DB6F4DF7E5_1200x.jpg?v=1589324707")

recipe2 = CheeseRecipe.create(name: "Marinated Manchego", ingredients: '1
    head of garlic, cloves separated and peeled (about 12 cloves)
    1
    small orange, quartered through stem end, thinly sliced crosswise, seeds removed
    ½
    cup extra-virgin olive oil
    3
    sprigs rosemary
    Kosher salt
    1
    lb. young Manchego cheese, cut or broken into ¾" pieces', directions: "Step 1
    Cook garlic, orange, and oil in a small saucepan over medium heat, stirring occasionally, until garlic starts to turn golden, 10–12 minutes. Remove from heat and add rosemary sprigs. Season with salt and let cool.
    Step 2
    Pour garlic mixture into a medium bowl, add cheese, and gently toss to coat cheese. Cover and chill at least 12 hours before serving.
    Step 3
    Do Ahead: Cheese can be marinated 3 days ahead. Keep chilled.
    WATCH
    
    Pro Chefs Make Their Favorite Cocktails (10 Recipes)
    ", cheese_id: cheese2.id, image: "https://assets.bonappetit.com/photos/5bec51f288f408579ca9f260/1:1/w_570,c_limit/marinated-manchego.jpg")

recipe3 = CheeseRecipe.create(name: "Bloomin' Brie Bread", ingredients: "1 boule
    2 tbsp. olive oil
    1/2 tsp. garlic powder
    1/2 tsp. Italian seasoning
    1 12-oz. wheel brie, top rind removed
    3/4 c. shredded mozzarella", directions: "Preheat oven to 350°. In a small bowl, whisk together oil, garlic powder, and Italian seasoning.
    Slice off top quarter of bread. Place the wheel of brie on top of the bread and use a paring knife to trace around it. Scoop out inner circle of bread. Brush oil mixture on inside of bread. Carefully, cut down around edges of bread to create slices that people will tear after baking.
    Sprinkle with about 1/2 cup mozzarella, place brie on top, then sprinkle with the rest of the mozzarella. Place bread top on top of cheese and bake until cheese is melty and the bread is toasty, about 20 minutes.
    Serve warm.", cheese_id: cheese3.id, image: "https://hips.hearstapps.com/del.h-cdn.co/assets/17/44/480x718/gallery-1509487984-delish-bloomin-brie-bread-pinterest-still002.jpg?resize=768:*")


course1 = Course.create(name: "Mozzarella Making", image: "https://cdn.thewhoot.com/wp-content/uploads/2020/05/homemade-mozzarella-recipe-.jpg", cheese_id: cheese1.id, instructor_id: instructor1.id, description: "$90 per person. The course includes:
1 gallon unhomogenized milk (fresh as posible)
1 1/2 teaspoon citric acid crystals
lipase powder, pinch (optional)
1/4 teaspoon rennet, single-strength
")

course2 = Course.create(name: "Manchego Making", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRvVDgGS4odlmIwEPysGp5z9-cWRbsLa1OAOw&usqp=CAU", cheese_id: cheese2.id, instructor_id: instructor2.id, description: "$150 per person. The course includes:
 
Two Gallons of whole sheep's milk
Half a teaspoon of thermophilic culture.
Half a teaspoon of mesophilic culture.
Half a teaspoon of lipase powder dissolved in half a cup of water.
Half a teaspoon of Rennet diluted in a quarter cup of water.
Non-iodized cheese salt for making brine.
")

course3 = Course.create(name: "Brie Making", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQVvqzU47yb7USDNF2JwQ4Dsd8L1AvADiSqOA&usqp=CAU", cheese_id: cheese3.id, instructor_id: instructor1.id, description: 
    "$120 per person. The course includes:
    2Gallons of Milk (Not UltraPasteurized) Minus 8 oz
8oz of Heavy Cream
1Packet C101 Mesophilic Culture or 1/4 tsp MM 100 Culture
1/16tsp C80 Penicillium Candidum
1/32tsp C70 Geotrichum Candidum
1/4tsp Single Strength Liquid Rennet
4tsp Cheese Salt
1/4tsp Calcium Chloride (for pasteurized milk)")
