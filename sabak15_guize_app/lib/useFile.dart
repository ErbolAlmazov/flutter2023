// ignore_for_file: file_names

import 'package:sabak15_guize_app/model.dart';

class UseQuize {
  int index = 0;
  List<QuizeModel> surooJoop = [
    QuizeModel(suroo: 'Кыргызстанда 7 область барбы?', joop: true),
    QuizeModel(suroo: 'Кокон хандыгы 612-жылы тузулгонбу?', joop: false),
    QuizeModel(suroo: 'Манас Жакыптын уулубу ?', joop: true),
    QuizeModel(suroo: 'Муса (а.с) акыркы пайгамбарбы?', joop: false),
    QuizeModel(
        suroo: '2015-жылы чемпиондор лигасын Барселона женди беле?',
        joop: true),
  ];
  String surooAluu() {
    return surooJoop[index].suroo;
  }

  bool joopAluu() {
    return surooJoop[index].joop;
  }

  void nextQuestion() {
    if (index <= surooJoop.length) {
      index++;
    }
  }

  bool isFinished() {
    if (surooJoop[index] == surooJoop.last) {
      return true;
    } else {
      return false;
    }
  }

  void indexZero() {
    index = 0;
  }
}
