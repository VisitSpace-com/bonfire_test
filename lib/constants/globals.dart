class Globals {
  Globals._();

  // Time limits
  static const double spriteStepTime = 0.1;

  // Players
  static const String greenNinjaSpriteSheet = 'green_ninja.png';
  static const String bsSamuraiSpriteSheet = 'bs_samurai.png';
  static const String tileMap = 'assets/images/layer1.json';
  // static const String tileMap2 = 'assets/images/bs_samurai_tileset.json';

  // Financial Statement
  static const String bsDialog = 'assets/images/bs_dialog.png';

  // Distances
  static const double radiusVision = 50;
  static const int observeMaxDistance = 70;
  static const int observeMinDistance = 30;

  // Sizes
  static const double tileSize = 32;
  static const double playerSize = tileSize * 1.5;
  static const double dialogBox = 100;
}
