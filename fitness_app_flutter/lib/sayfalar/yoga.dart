import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:palette_generator/palette_generator.dart';

class Yoga extends StatelessWidget {
  Color appbarRengi = Colors.transparent;
  late PaletteGenerator _generator;

  @override
  Widget build(BuildContext context) {
    print('build çalıstı');
    return Scaffold(
        appBar: AppBar(
          title: Text("Yoga"),
          backgroundColor: Color.fromRGBO(177, 59, 167, 1),
        ),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 250,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  "",
                ),
                centerTitle: true,
                background: Image.asset(
                  'images/pilates1.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(8),
                child: SingleChildScrollView(
                  child: Text(
                    "Yoga Nedir? \n \nYoga, Hindistan kaynaklı fiziksel ve zihinsel disiplinleri tarif etmek için kullanılan bir kelimedir. Aynı zamanda Hinduizm, Budizm ve Jainizm'de çeşitli meditatif uygulamalara da yoga adı verilmektedir. Hinduizmde, altı geleneksel felsefe okulundan biri olarak kabul edilir",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  void appbarRenginiBul() async {
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage('images/pilates1.png'));
    appbarRengi = _generator.vibrantColor!.color;

    print(appbarRengi);
  }
}
