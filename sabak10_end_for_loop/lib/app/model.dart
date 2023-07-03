// ignore_for_file: unused_import

import 'package:flutter/material.dart';

class Student {
  Student(
      {required this.id,
      required this.image,
      required this.name,
      required this.surName,
      required this.age,
      this.phone,
      required this.email,
      this.adress,
      required this.group,
      this.gender,
      this.marriage});
  final String name;
  final String surName;
  int age;
  String? phone;
  final String email;
  final String? adress;
  int group;
  final String? gender;
  String? marriage;
  final int id;
  final Image image;
}

final erbol = Student(
    id: 1,
    image: Image.network(
        'https://i.guim.co.uk/img/media/33c508e9f0c30a90df363e3b5cc3925f0b70f5b6/0_0_3600_2159/master/3600.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=6c1e047f1edc4a54f1770458201ed69e'),
    name: 'Erbol',
    surName: 'Almazov',
    age: 20,
    email: 'almazovbj.com',
    group: 1);

final kalyk = Student(
    id: 2,
    image: Image.network(
        'https://www.shutterstock.com/image-photo/image-happy-brunette-man-wearing-260nw-1489874846.jpg'),
    name: 'Kalyk',
    surName: 'Sulaimanov',
    age: 21,
    email: 'Sulaimanov.com',
    group: 2);

final eldiar = Student(
    id: 3,
    image: Image.network(
        'https://media.npr.org/assets/img/2022/11/08/ap22312071681283-0d9c328f69a7c7f15320e8750d6ea447532dff66-s1100-c50.jpg'),
    name: 'Eldiar',
    surName: 'Bakytbekov',
    age: 19,
    email: 'Bakytbekov.com',
    group: 3);

final boxa = Student(
    id: 4,
    image: Image.network(
        'https://essentialhomme.net/wp-content/uploads/2022/09/Mango-Man-x-Antoine-Griezmann-0.webp'),
    name: 'Boxa',
    surName: 'Muratbekov',
    age: 19,
    email: 'Muratbekov.com',
    group: 4);

final tilek = Student(
    id: 5,
    image: Image.network(
        'https://images.unsplash.com/photo-1624797432677-6f803a98acb3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YnVzaW5lc3MlMjBtYW58ZW58MHx8MHx8fDA%3D&w=1000&q=80'),
    name: 'Tilek',
    surName: 'Toktosunov',
    age: 19,
    email: 'Toktosunovbj.com',
    group: 5);
