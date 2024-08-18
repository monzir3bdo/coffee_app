import 'package:coffee_app/core/models/coffee_model.dart';
import 'package:coffee_app/generated/assets.dart';

class Utils {
  static List<CoffeeModel> allCoffee = [
    CoffeeModel(
      id: 1,
      name: 'American Coffee',
      toppings: '',
      description:
          'American coffee, also known as drip coffee, is made by brewing coarsely ground coffee beans with hot water through a filter. The result is a milder, less concentrated drink compared to espresso. It’s typically served in larger portions and can be enjoyed black or with additions like milk, cream, and sweeteners.',
      prices: {
        'short': 3.5,
        'tall': 4.0,
        'grande': 5,
        'venti': 6,
      },
      rating: 4.1,
      numberOfReviews: 2000,
      image: Assets.coffeeAmericanCoffee,
    ),
    CoffeeModel(
      id: 2,
      name: 'Latte',
      toppings: '',
      description:
          ' Latte is your ultimate app for crafting and enjoying personalized lattes. Discover a range of recipes, customize your drinks, and connect with fellow latte enthusiasts. Enjoy every sip with Latte!',
      prices: {
        'short': 5,
        'tall': 5.5,
        'grande': 6,
        'venti': 7,
      },
      rating: 4.7,
      numberOfReviews: 4789,
      image: Assets.coffeeLatte,
    ),
    CoffeeModel(
      id: 3,
      name: 'Mocha',
      toppings: '',
      description:
          'Dive into the world of chocolate-infused coffee with Mocha! Discover exciting recipes, customize your perfect cup, and share your mocha creations with a community of coffee enthusiasts. Unleash your inner barista and enjoy the luxurious blend of flavors in every sip.',
      prices: {
        'short': 6,
        'tall': 6.5,
        'grande': 7,
        'venti': 7.5,
      },
      rating: 4.2,
      numberOfReviews: 5011,
      image: Assets.coffeeMocha,
    ),
    CoffeeModel(
      id: 4,
      name: 'Espresso',
      toppings: '',
      description:
          'Energize your day with Espresso! This app is your ultimate guide to crafting the perfect shot, from classic espresso to inventive recipes. Explore various brewing techniques, customize your drink to perfection, and share your creations with a community of espresso aficionados. Elevate your coffee experience, one shot at a time.',
      prices: {
        'short': 4.5,
        'tall': 5.0,
        'grande': 5.5,
        'venti': 7,
      },
      rating: 4.0,
      numberOfReviews: 1050,
      image: Assets.coffeeEspresso,
    ),
    CoffeeModel(
      id: 5,
      name: 'Cappuccino',
      toppings: '',
      description:
          'Enjoy a classic cappuccino with a perfect blend of rich espresso, creamy steamed milk, and frothy foam. Explore a variety of cappuccino recipes, customize your drink to suit your taste, and connect with other cappuccino lovers. Discover the art of crafting a creamy, satisfying cappuccino every time.',
      prices: {
        'short': 4.5,
        'tall': 5.0,
        'grande': 6.5,
        'venti': 7,
      },
      rating: 4.8,
      numberOfReviews: 20000,
      image: Assets.coffeeCapuuccino,
    ),
    CoffeeModel(
      id: 6,
      name: 'Spanish Latte',
      toppings: '',
      description:
          ' Experience the unique flavor of a Spanish latte! This delightful drink combines espresso with creamy steamed milk and a touch of sweetened condensed milk for a rich, caramel-like taste. Explore various recipes, customize your Spanish latte to perfection, and share your creations with fellow coffee enthusiasts. Enjoy a taste of Spain with every sip!',
      prices: {
        'short': 3.5,
        'tall': 4.0,
        'grande': 5,
        'venti': 6,
      },
      rating: 4.1,
      numberOfReviews: 2015,
      image: Assets.coffeeSpanishLatte,
    ),
    CoffeeModel(
      id: 7,
      name: 'Hot Chocolate',
      toppings: '',
      description:
          'Warm up with the rich, comforting taste of hot chocolate! Our app offers a variety of recipes, from classic to indulgent, all featuring smooth chocolate and creamy milk. Customize your hot chocolate with toppings, flavors, and more. Join a community of hot chocolate lovers and savor the perfect cup every time',
      prices: {
        'short': 5.5,
        'tall': 6.0,
        'grande': 7,
        'venti': 8,
      },
      rating: 4.9,
      numberOfReviews: 7890,
      image: Assets.coffeeHotChocolate,
    ),
    CoffeeModel(
      id: 8,
      name: 'Turkish Coffee',
      toppings: '',
      description:
          'Discover the bold and aromatic flavors of Turkish coffee! This traditional brew is crafted with finely ground coffee, water, and a touch of sweetness, all simmered to perfection. Explore authentic recipes, customize your coffee to suit your taste, and connect with fellow enthusiasts. Experience a rich, cultural coffee tradition with every cup.',
      prices: {
        'short': 3.5,
        'tall': 4.0,
        'grande': 5,
        'venti': 6,
      },
      rating: 4.4,
      numberOfReviews: 1150,
      image: Assets.coffeeTurkishCoffee,
    ),
    CoffeeModel(
      id: 9,
      name: 'Sudanese Coffee',
      toppings: '',
      description:
          'Immerse yourself in the rich traditions of Sudanese coffee! This unique brew combines finely ground coffee with spices like cardamom and cloves, creating a fragrant and flavorful experience. Explore traditional recipes, customize your coffee to your liking, and connect with others who appreciate this distinctive blend. Savor the authentic taste of Sudan with every cup.',
      prices: {
        'short': 5.5,
        'tall': 6.0,
        'grande': 6.5,
        'venti': 7,
      },
      rating: 4.9,
      numberOfReviews: 5000,
      image: Assets.coffeeSudaneseCoffee,
    )
  ];
}
