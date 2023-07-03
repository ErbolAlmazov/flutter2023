import 'package:flutter/material.dart';
import 'package:sabak15_guize_app/constants/app_TextStyle.dart';

import 'package:sabak15_guize_app/constants/app_colors.dart';
import 'package:sabak15_guize_app/constants/texts.dart';
import 'package:sabak15_guize_app/useFile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  UseQuize useQuize = UseQuize();
  List<Icon> iconAluu = [];

  void teksher(bool koldonuu) {
    bool correctAnswer = useQuize.joopAluu();
    setState(() {
      if (useQuize.isFinished() == true) {
        showDialog<void>(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Тест QuizeApp'),
              content: SingleChildScrollView(
                child: ListBody(
                  children: const <Widget>[
                    Text('Сиздин тест аягына чыкты'),
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                  child: const Text('Улантуу'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                TextButton(
                  child: const Text('Токтотуу'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
        useQuize.indexZero();
        iconAluu = [];
      } else {
        if (correctAnswer == koldonuu) {
          iconAluu.add(const Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          iconAluu.add(const Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
        useQuize.nextQuestion();
      }
    });
  }

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
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Text(useQuize.surooAluu(),
                    style: AppTextStyle.appTextStyle,
                    textAlign: TextAlign.center),
                const SizedBox(
                  height: 102,
                ),
                SizedBox(
                  width: 335,
                  height: 70,
                  child: ElevatedButton(
                    onPressed: () {
                      teksher(true);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.elevBtnTrueColor),
                    child: const Text(
                      AppTexts.tuura,
                      style: AppTextStyle.trueStyle,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 335,
                  height: 70,
                  child: ElevatedButton(
                    onPressed: () {
                      teksher(false);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.elevBtnFalseColor,
                    ),
                    child: const Text(
                      AppTexts.tuuraEmes,
                      style: AppTextStyle.trueStyle,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  height: 40,
                  child: ListView.builder(
                    itemCount: iconAluu.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return iconAluu[index];
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
