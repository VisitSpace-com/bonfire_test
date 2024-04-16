import 'package:bonfire/bonfire.dart';

import 'player_sprite_sheet.dart';

class NinjaPlayer extends SimplePlayer {
  NinjaPlayer({
    required super.position,
  }) : super(
          size: Vector2(48, 48),
          speed: 100,
          initDirection: Direction.down,
          animation: PlayerSpriteSheet.simpleDirectionAnimation,
        );
}
