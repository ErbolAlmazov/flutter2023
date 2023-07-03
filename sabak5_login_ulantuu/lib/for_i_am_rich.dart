import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const IamRich(),
    );
  }
}

class IamRich extends StatefulWidget {
  const IamRich({super.key});

  @override
  State<IamRich> createState() => _IamRichState();
}

class _IamRichState extends State<IamRich> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 235, 59, 1),
        title: const Center(
          child: Text(
            'Тапшырма 3',
            style: TextStyle(color: Colors.black),
          ),
        ),
        elevation: 11,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "I'm Rich",
              style: TextStyle(fontSize: 48, fontFamily: "Sofia-Regular"),
            ),
            SizedBox(
                width: 300,
                height: 300,
                child: Image.asset("assets/images/almaz.png")),
          ],
        ),
      ),
    );
  }
}
