import 'package:flutter/material.dart';
import 'package:sabak_16_bmi_end_snippets/app_textS.dart';
import 'package:sabak_16_bmi_end_snippets/components/status_card.dart';
import 'package:sabak_16_bmi_end_snippets/constants/app.colors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: AppTexts.bmi,
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 21, right: 21, top: 32, bottom: 41),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: const [
                  StatusCard(),
                  SizedBox(
                    width: 39,
                  ),
                  StatusCard(),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: const [
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.only(top: 18, bottom: 18),
                    child: StatusCard(),
                  )),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: const [
                  StatusCard(),
                  SizedBox(
                    width: 39,
                  ),
                  StatusCard(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 73,
        color: AppColors.pinkColor,
        child: const Center(child: AppTexts.calculator),
      ),
    );
  }
}
