import 'package:flutter/material.dart';

import 'Components/custom_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componens and constants'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 50),
            Image.network(
                'https://t3.ftcdn.net/jpg/03/67/35/72/360_F_367357209_BG07SVnnB4HSHSaMiHajfZhrZZAE859A.jpg'),
            const SizedBox(height: 20),
            const CustomButton(
              icon: Icons.phone,
              text: 'Телефон номер',
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomButton(
              icon: Icons.mail,
              text: 'Электронный почта',
            ),
          ],
        ),
      ),
    );
  }
}
