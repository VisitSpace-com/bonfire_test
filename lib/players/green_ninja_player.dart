import 'package:bonfire/bonfire.dart';

import '../constants/animation_configs.dart';
import '../constants/globals.dart';

class GreenNinjaPlayer extends SimplePlayer {
  GreenNinjaPlayer({
    required super.position,
    required SpriteSheet spriteSheet,
  }) : super(
          size: Vector2(Globals.playerSize, Globals.playerSize),
          speed: 150,
          initDirection: Direction.down,
          animation:
              AnimationConfigs.greenNinjaAnimation(spriteSheet: spriteSheet),
        );
}
