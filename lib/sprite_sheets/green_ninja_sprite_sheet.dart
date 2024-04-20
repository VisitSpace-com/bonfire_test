import 'package:flutter/material.dart';
import 'package:bonfire/bonfire.dart';

import '../constants/globals.dart';

class GreenNinjaSpriteSheet {
  static Future<void> load() async {
    WidgetsFlutterBinding.ensureInitialized();

    final image = await Flame.images.load(Globals.greenNinjaSpriteSheet);
    spriteSheet = SpriteSheet.fromColumnsAndRows(
      image: image,
      columns: 4,
      rows: 4,
    );
  }

  static late SpriteSheet spriteSheet;
}
