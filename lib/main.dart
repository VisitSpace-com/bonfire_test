import 'package:flutter/material.dart';

import 'games/green_ninja_game.dart';
import 'sprite_sheets/green_ninja_sprite_sheet.dart';
import 'sprite_sheets/bs_samurai_sprite_sheet.dart';
import 'sprite_sheets/pl_okami_sprite_sheet.dart';

void main() async {
  await GreenNinjaSpriteSheet.load();
  await BsSamuraiSpriteSheet.load();
  await PlOkamiSpriteSheet.load();

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yourtory Demo',
      home: GreenNinjaGame(),
    );
  }
}
