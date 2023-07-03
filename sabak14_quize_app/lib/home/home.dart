import 'package:flutter/material.dart';
import 'package:sabak14_quize_app/constants/app_TextStyle.dart';
import 'package:sabak14_quize_app/constants/app_colors.dart';
import 'package:sabak14_quize_app/constants/texts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: const Center(
          child: Text(
            'Тапшырма 7',
            style: TextStyle(
              color: AppColors.appBarTextColor,
              fontSize: 23,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Кыргызстанда 7 область барбы?',
                style: AppTextStyle.appTextStyle,
              ),
              const SizedBox(
                height: 102,
              ),
              SizedBox(
                width: 335,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.elevBtnTrueColor),
                  child: const Text(
                    AppTexts.tuura,
                    style: AppTextStyle.trueStyle,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 335,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.elevBtnFalseColor,
                  ),
                  child: const Text(
                    AppTexts.tuuraEmes,
                    style: AppTextStyle.trueStyle,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.check,
                    color: Colors.green,
                    size: 35,
                  ),
                  Icon(
                    Icons.close,
                    color: Colors.red,
                    size: 35,
                  )
                ],
              )
              //SizedBox(
              //height: 50,
              // child: ListView.builder(
              // itemCount: 1,
              // scrollDirection: Axis.horizontal,
              //itemBuilder: (context, index) {
              // return const Icon(Icons.check);
              //  Icon(Icons.close);
              //},
            ],
          ),
        ),
      ),
    );
  }
}
