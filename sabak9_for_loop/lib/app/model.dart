import 'package:flutter/material.dart';

class Student {
  Student(
      {required this.id,
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
  int id;
}

final Erbol = Student(
    id: 1,
    name: 'Erbol',
    surName: 'Almazov',
    age: 19,
    email: 'almazovbj.com',
    group: 1);

final Kalyk = Student(
    id: 2,
    name: 'Erbol',
    surName: 'Almazov',
    age: 19,
    email: 'almazovbj.com',
    group: 1);

final Eldiar = Student(
    id: 3,
    name: 'Erbol',
    surName: 'Almazov',
    age: 19,
    email: 'almazovbj.com',
    group: 1);

final Boxa = Student(
    id: 4,
    name: 'Erbol',
    surName: 'Almazov',
    age: 19,
    email: 'almazovbj.com',
    group: 1);

final Tilek = Student(
    id: 5,
    name: 'Erbol',
    surName: 'Almazov',
    age: 19,
    email: 'almazovbj.com',
    group: 1);

List Studenter = <Student>[
  Erbol,
  Kalyk,
  Eldiar,
  Boxa,
  Tilek,
];
