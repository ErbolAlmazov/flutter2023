import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget(
      {super.key,
      required this.containerdintexti,
      required this.containerdintexti2,
      this.icon,
      required this.image});
  final String containerdintexti;
  final String containerdintexti2;
  final IconData? icon;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(containerdintexti),
              Text(containerdintexti2),
              Icon(icon),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                image,
                height: 50,
                width: 50,
              ),
            ],
          )
        ],
      ),
    );
  }
}
