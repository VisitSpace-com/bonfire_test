class Globals {
  Globals._();

  // Time limits
  static const double spriteStepTime = 0.1;

  // Players
  static const String greenNinjaSpriteSheet = 'green_ninja.png';
  static const String bsSamuraiSpriteSheet = 'bs_samurai.png';
  static const String plOkamiSpriteSheet = 'pl_okami.png';
  static const String map = 'map.json';

  // Financial Statement
  static const String bsDialog = 'assets/images/bs_dialog.png';
  static const String plDialog = 'assets/images/pl_dialog.png';

  // Distances
  static const double observeMaxDistance = 70;
  static const double observeMinDistance = 30;
  static const double radiusVision = 130;

  // Sizes
  static const double tileSize = 32;
  static const double playerSize = tileSize * 1.5;
  static const double dialogBox = 100;
}
