import 'package:fitness_app_flutter/sayfalar/yoga.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'myWidget.dart';

class Egzersiz extends StatelessWidget {
  const Egzersiz({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: Text(
          "Egzersizler",
        )),
        body: MyWidget(),
      ),
    );
  }
}
