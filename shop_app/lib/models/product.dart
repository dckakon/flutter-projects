import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
    required this.color,
    required this.size,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: 'STATA X9T',
      price: 3000,
      description: dummyText,
      image: 'assets/images/lock1.png',
      color: Color(0xFF3D82AE),
      size: 12),
  Product(
      id: 2,
      title: 'STATA Lock 2',
      price: 2000,
      description: dummyText,
      image: 'assets/images/lock2.png',
      color: Color(0xFFD3A984),
      size: 12),
  Product(
      id: 3,
      title: 'STATA NOTE7',
      price: 27000,
      description: dummyText,
      image: 'assets/images/lock6.png',
      color: Color(0xFF989493),
      size: 12),
  Product(
      id: 4,
      title: 'STATA X99',
      price: 30000,
      description: dummyText,
      image: 'assets/images/lock4.png',
      color: Color(0xFF3D82AE),
      size: 12),
  Product(
      id: 5,
      title: 'STATA ST',
      price: 2000,
      description: dummyText,
      image: 'assets/images/lock5.png',
      color: Color(0xFFD3A984),
      size: 12),
  Product(
      id: 6,
      title: 'STATA Lock6',
      price: 8000,
      description: dummyText,
      image: 'assets/images/lock3.png',
      color: Color(0xFF989493),
      size: 12),
];

String dummyText =
    'Lorem Ipsum is simply dummy text of the printing and type setting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.';
