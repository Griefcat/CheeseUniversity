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
User.destroy_all

cheese1 = Cheese.create(name: "Mozzarella", cheese_type: "Fresh cheese")

instructor1 = Instructor.create(instructor_name: "Waldemar Albrecht", specialty: "Fresh cheese", email: Faker::Internet.email, biography: "Waldemar Albrecht studied law and business administration in his native Venezuela. After immigrating to the US to follow his passion for gastronomy and culinaria, he received training in cheese from industry leaders like Debra Dickerson, Janet Tarlov, Daphne Zepos, and Juliana Uruburu. Managing the cheese counter at the acclaimed Pasta Shop from 1998 through 2002. In May 2003, Waldemar moved to New York City to become a full time Maitre Fromager at Artisanal restaurant, as well as member of the faculty at Artisanal Premium Cheese, nurturing his education through his mentor and friend Max McCalman. Currently, Waldemar works as a spokesperson for Lactalis-USA, conducts food tours with friend and partner Clarisa Penzini, and is the cheese buyer for the Battery Place Markets in Manhattan.", image_url: "https://cdn.shopify.com/s/files/1/0307/2417/files/Waldemar_Albrecht.jpg?1744" )

recipe1 = CheeseRecipe.create(recipe: "Ingredients:

1 large eggplant, sliced into 1/2-inch thick slices
1 cup each chopped zucchini, mushroom & bell pepper
1 tablespoon olive oil
1 cup filling cheese of choice
1 egg
2 garlic cloves, minced
1/2 teaspoon each & black pepper, more to taste
2 1/2 cups tomato sauce (optional)
1 cup mozzarella cheese
2 tablespoon fresh parsley, chopped
Directions:

Preheat the oven to 400F. Carefully slice eggplant into 1/2-inch thick slices. Salt on both sides and let sit to “sweat” for 10 minutes – this is to avoid a watery eggplant rollatini. Pat dry with a paper towel and wipe off remaining salt.
Lay eggplant on a lightly greased pan and bake for 10 minutes. Remove and let cool.
While eggplant is baking, rough chop mushrooms, zucchini, and bell pepper. Add oil to the pan and sautee mixture until soft. Finish with garlic and continue stirring.
Let the mixture cool, then add filling cheese and egg to bind.
Add tomato sauce to the bottom of your baking dish.
After the eggplant has cooled, spoon 1-2 Tablespoons of vegetable filling on eggplant, then roll and lay in a baking dish with sauce. Repeat until finished.
Spoon sauce over eggplant, sprinkle with mozzarella. Cover and bake for 30 minutes, then uncover and bake for 10 minutes. 
", cheese_id: cheese1.id)



user1 = User.create(username: "Cheese Guy1", email: "cheese@cheese.com")

course1 = Course.create(name: "Fresh cheese", user_id: user1.id, cheese_id: cheese1.id, instructor_id: instructor1.id, description: "$90 per person including shipping and handling.*
1-hour tasting class by Zoom with an instructor featuring:
- Reusable cheesecloth
- Thermometer
- Citric Acid
- Instructions
(Milk must be purchased ahead of time by student)"  )
