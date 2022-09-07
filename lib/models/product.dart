import 'package:flutter/material.dart';

class Product{
  final String image, title, description;
  final int price, size,id;
  final Color color;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      price: 100,
      image: "assets/images/pepper.png",
      id: 1,
      title: "Pepper",
      description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
      size: 12,
      color: Color(0xFF3D82AE)),


  Product(
      price: 100,
      image: "assets/images/tomato.jpg",
      id: 2,
      title: "Tomatoes",
      description: "Fresh from nature",
      size: 12,
      color: Color(0xFF43A047)),

  Product(
      price: 100,
      image: "assets/images/tomato.jpg",
      id: 3,
      title: "Carrot",
      description: "Fresh from nature",
      size: 12,
      color: Color(0xFF3D82AE)),

  Product(
      price: 100,
      image: "assets/images/tomato.jpg",
      id: 4,
      title: "Garden Egg",
      description: "Fresh from nature",
      size: 12,
      color: Color(0xFF3D82AE)),

  Product(
      price: 100,
      image: "assets/images/tomato.jpg",
      id: 5,
      title: "Onions",
      description: "Fresh from nature",
      size: 12,
      color: Color(0xFF3D82AE)),


  Product(
      price: 100,
      image: "assets/images/tomato.jpg",
      id: 6,
      title: "Green Pepper",
      description: "Fresh from nature",
      size: 12,
      color: Color(0xFF3D82AE)),

];