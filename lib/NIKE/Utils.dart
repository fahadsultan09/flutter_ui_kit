


import 'package:flutter/material.dart';

double baseHeight = 640.0;



double screenAwareSize(double size,BuildContext context){
  return size * MediaQuery.of(context).size.height/baseHeight;
}


List<String> sizeNumlist = [
  "6",
  "7",
  "8",
  "9",
  "10",
];
List<Color> colors = [
  Color(0xFFF9362E),
  Color(0xFF003CFF),
  Color(0xFFFFB73A),
  Color(0xFF3AFFFF),
  Color(0xFF1AD12C),
  Color(0xFFD66400),
];

String desc =
    "Get maximum support, comfort and a refreshed look with these adidas energy cloud shoes for men comes wit a classic style."
    "Boost your running comfort to the next level with this supportive shoe Synthetic upper with FITFRAME midfoot cage for a locked-down fit and feel"
    "Lace-up closure Cushioned footbed CLOUDFOAM midsole provides responsive padding Durable ADIWEAR™ rubber sole.";



class Product {
  String imageUrl;
  String name;
  double price;
  String description;

  Product({
    this.imageUrl,
    this.name,
    this.price,
    this.description,
  });
}

final List<Product> products = [
  Product(
    imageUrl: 'assets/images/adidas.png',
    name: 'NIKE Smart Wear',
    price: 791.95,
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A condimentum vitae sapien pellentesque habitant morbi tristique senectus et. Auctor neque vitae tempus quam pellentesque nec. Volutpat consequat mauris nunc congue nisi. Commodo ullamcorper a lacus vestibulum sed arcu non odio euismod. Aliquam id diam maecenas ultricies mi eget.',
  ),
  Product(
    imageUrl: 'assets/images/adidas.png',
    name: 'Hush puppies Gym Freak',
    price: 1091.99,
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A condimentum vitae sapien pellentesque habitant morbi tristique senectus et. Auctor neque vitae tempus quam pellentesque nec. Volutpat consequat mauris nunc congue nisi. Commodo ullamcorper a lacus vestibulum sed arcu non odio euismod. Aliquam id diam maecenas ultricies mi eget.',
  ),
  Product(
    imageUrl: 'assets/images/adidas.png',
    name: 'Hush puppies Casual',
    price: 1199.99,
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A condimentum vitae sapien pellentesque habitant morbi tristique senectus et. Auctor neque vitae tempus quam pellentesque nec. Volutpat consequat mauris nunc congue nisi. Commodo ullamcorper a lacus vestibulum sed arcu non odio euismod. Aliquam id diam maecenas ultricies mi eget.',
  ),
  Product(
    imageUrl: 'assets/images/adidas.png',
    name: 'Bata Jogger',
    price: 8128.99,
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A condimentum vitae sapien pellentesque habitant morbi tristique senectus et. Auctor neque vitae tempus quam pellentesque nec. Volutpat consequat mauris nunc congue nisi. Commodo ullamcorper a lacus vestibulum sed arcu non odio euismod. Aliquam id diam maecenas ultricies mi eget.',
  ),
  Product(
    imageUrl: 'assets/images/adidas.png',
    name: 'Nike Footwear',
    price: 9900.95,
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A condimentum vitae sapien pellentesque habitant morbi tristique senectus et. Auctor neque vitae tempus quam pellentesque nec. Volutpat consequat mauris nunc congue nisi. Commodo ullamcorper a lacus vestibulum sed arcu non odio euismod. Aliquam id diam maecenas ultricies mi eget.',
  ),
];

final List<Product> books = [
  Product(
    imageUrl: 'assets/images/adidas.png',
    name: 'Soft Shoe',
    price: 1844.49,
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A condimentum vitae sapien pellentesque habitant morbi tristique senectus et. Auctor neque vitae tempus quam pellentesque nec. Volutpat consequat mauris nunc congue nisi. Commodo ullamcorper a lacus vestibulum sed arcu non odio euismod. Aliquam id diam maecenas ultricies mi eget.',
  ),
  Product(
    imageUrl: 'assets/images/adidas.png',
    name: 'Addidas Special',
    price: 1811.40,
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A condimentum vitae sapien pellentesque habitant morbi tristique senectus et. Auctor neque vitae tempus quam pellentesque nec. Volutpat consequat mauris nunc congue nisi. Commodo ullamcorper a lacus vestibulum sed arcu non odio euismod. Aliquam id diam maecenas ultricies mi eget.',
  ),
  Product(
    imageUrl: 'assets/images/adidas.png',
    name: 'Addidas 3',
    price: 2218.98,
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A condimentum vitae sapien pellentesque habitant morbi tristique senectus et. Auctor neque vitae tempus quam pellentesque nec. Volutpat consequat mauris nunc congue nisi. Commodo ullamcorper a lacus vestibulum sed arcu non odio euismod. Aliquam id diam maecenas ultricies mi eget.',
  ),
  Product(
    imageUrl: 'assets/images/adidas.png',
    name: 'The Power of Habit',
    price: 10.20,
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. A condimentum vitae sapien pellentesque habitant morbi tristique senectus et. Auctor neque vitae tempus quam pellentesque nec. Volutpat consequat mauris nunc congue nisi. Commodo ullamcorper a lacus vestibulum sed arcu non odio euismod. Aliquam id diam maecenas ultricies mi eget.',
  ),
];

final List<Product> cart = [
  products[3],
  books[2],
  products[1],
  books[0],
  products[4],
];