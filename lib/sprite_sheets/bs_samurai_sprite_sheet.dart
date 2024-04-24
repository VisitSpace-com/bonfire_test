import 'package:flutter/material.dart';
import 'package:bonfire/bonfire.dart';

import '../constants/globals.dart';

class BsSamuraiSpriteSheet {
  static Future<void> load() async {
    WidgetsFlutterBinding.ensureInitialized();

    final image = await Flame.images.load(Globals.bsSamuraiSpriteSheet);
    spriteSheet = SpriteSheet.fromColumnsAndRows(
      image: image,
      columns: 4,
      rows: 4,
    );
  }

  static late SpriteSheet spriteSheet;
}
