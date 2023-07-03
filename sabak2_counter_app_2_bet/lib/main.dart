import 'package:flutter/material.dart';
import 'package:sabak2_counter_app_2_bet/secondPage.dart';

//импорт бул-Флаттерге тиешелуу нерселерди озуно камтыйт
//void:Эч нерсе кайтарбайт():функциянын функция экенин билдирет
//main:негигзи функция//{}:функциянын денеси
void main() {
  //runApp:тиркемени баштоочу функция,ичине виджет алынат.
  //MyApp:класс же виджеттин аталышы
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
//класстын конструктору
  @override
  //buid:куруу,ал озуно виджет алат.
  // Buildcontext context:Баардык виджет дарактарын козомолго алган вектор.
  Widget build(BuildContext context) {
    //return:кайтарат,эмнени кайтарат?МатериалЭпти кайтарат.
    //MaterialApp:Материалдык дизайны бар жаны флаттер колдонмосун тузот.
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //title:аталышы
      title: 'Flutter Demo',
      //theme:тема.MaterialAppка тиешелуу свойства
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //:Home:уй.MaterialAppтин свойствосу
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //проектке он берет
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "Тапшырма 1",
          style: TextStyle(color: Colors.black),
        ),
        //elevation-Бул теньди жок кылуучу свойство
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              width: double.infinity,
              height: 44,
              // ignore: sort_child_properties_last
              child: Center(
                child: Text(
                  "Сан: $index",
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(10)),
            ),
            const SizedBox(
              height: 29,
            ),
            //row:бул экрандын ортосуна алып келуу учун колдонулат
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //ElevatedButton:бул код улгусу жергиликтуу долбоорду иштетуу учцн керектелет.
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        index--;
                      });
                    },
                    child: const Icon(Icons.remove)),
                const SizedBox(
                  width: 40,
                ),
                ElevatedButton(
                    onPressed: () {
                      //:setStateти колдонмойун абал озгорбойт.
                      setState(() {
                        index++;
                      });
                    },
                    child: const Icon(
                      Icons.add,
                    )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EkinchiBet(
                          count: index,
                        ),
                      ));
                },
                icon: const Icon(
                  Icons.next_plan,
                  size: 50,
                  color: Colors.red,
                ))
          ]),
        ),
      ),
    );
  }
}
