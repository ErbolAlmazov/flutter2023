// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:sabak10_end_for_loop/app/model.dart';
import 'package:sabak10_end_for_loop/home/UserPage.dart';

List studentter = <Student>[erbol, kalyk, eldiar, boxa, tilek];

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  String? _name;
  String? _gmail;

  void controlNameEmail(String name, String email) {
    int index = 0;
    for (final student in studentter) {
      index++;
      if (name == student.name && email == student.email) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UserPage(
              student: student,
            ),
          ),
        );
        break;
      } else {
        if (index == studentter.length) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Не удалось,повторите попытку!"),
            ),
          );
        } else {
          continue;
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('LoginPage'.toUpperCase())),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://as1.ftcdn.net/v2/jpg/02/64/92/04/1000_F_264920404_XMWIEQ2gXr5TPY1Dmd4vPv8NgFx6uwvH.jpg'),
                fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  FlutterLogo(
                    size: 80,
                  ),
                  Text('Flutter'),
                ],
              ),
              const Text(
                'Welcome To Saifty',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              const Text(
                'Keep your data safe!',
                style: TextStyle(color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  onChanged: (String value) {
                    _name = value;
                    print('Валуе иштеди $value');
                    print('Валуе иштеди $_name');
                  },
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Name'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  onChanged: (String value) {
                    _gmail = value;
                    print('Валуе иштеди $value');
                    print('Валуе иштеди $_gmail');
                  },
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Email'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 40),
                ),
                onPressed: () {
                  controlNameEmail(_name!, _gmail!);
                },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
