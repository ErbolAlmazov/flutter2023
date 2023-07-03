import 'package:flutter/material.dart';
import 'package:sabak13_piano_app_extract_widget/components/container_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.containerdinTexti});
  final String containerdinTexti;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ExtractWidget'),
        ),
        body: Column(
          children: const [
            ContainerWidget(
              containerdintexti: 'Container 1',
              containerdintexti2: 'Kyrgyzstan',
              icon: Icons.add_location_sharp,
              image:
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Flag_of_Kyrgyzstan.svg/1200px-Flag_of_Kyrgyzstan.svg.png',
            ),
            SizedBox(
              height: 10,
            ),
            ContainerWidget(
              containerdintexti: 'Container 2',
              containerdintexti2: 'America',
              icon: Icons.add_business_outlined,
              image:
                  'https://upload.wikimedia.org/wikipedia/en/thumb/a/a4/Flag_of_the_United_States.svg/1200px-Flag_of_the_United_States.svg.png',
            ),
            SizedBox(
              height: 10,
            ),
            ContainerWidget(
              containerdintexti: 'Container 3',
              containerdintexti2: 'Argentina',
              icon: Icons.account_box_rounded,
              image:
                  'https://cdn.britannica.com/18/147118-050-7F820ED5/flag-Argentina-2010.jpg',
            ),
            SizedBox(
              height: 10,
            ),
            ContainerWidget(
                containerdintexti: 'Container 4',
                containerdintexti2: 'Brazil',
                icon: Icons.add_reaction,
                image:
                    'https://upload.wikimedia.org/wikipedia/en/thumb/0/05/Flag_of_Brazil.svg/1200px-Flag_of_Brazil.svg.png'),
            SizedBox(
              height: 10,
            ),
            ContainerWidget(
              containerdintexti: 'Container 5',
              containerdintexti2: 'Kazakztan',
              icon: Icons.airline_seat_flat_angled,
              image:
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Flag_of_Kazakhstan.svg/1280px-Flag_of_Kazakhstan.svg.png',
            ),
            SizedBox(
              height: 10,
            ),
            ContainerWidget(
              containerdintexti: 'Container 6',
              containerdintexti2: 'Spain',
              icon: Icons.four_g_plus_mobiledata_rounded,
              image:
                  'https://cdn.shopify.com/s/files/1/0690/6812/8571/products/spain-flag__67306.1639690376.1280.1280.jpg?v=1673391427',
            ),
          ],
        ),
      ),
    );
  }
}
