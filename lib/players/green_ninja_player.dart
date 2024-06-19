import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';

import '../constants/animation_configs.dart';
import '../constants/globals.dart';

class GreenNinjaPlayer extends SimplePlayer
    with Lighting, BlockMovementCollision {
  GreenNinjaPlayer({
    required super.position,
    required SpriteSheet spriteSheet,
    required Vector2 velocity,
  }) : super(
          size: Vector2(Globals.playerSize, Globals.playerSize),
          speed: 120,
          initDirection: Direction.down,
          animation:
              AnimationConfigs.playersAnimation(spriteSheet: spriteSheet),
        ) {
    setupLighting(
      LightingConfig(
        radius: width * 2,
        blurBorder: width * 2,
        color: Colors.yellow.withOpacity(0.1),
      ),
    );
  }
  @override
  Future<void> onLoad() {
    add(RectangleHitbox(size: size));
    return super.onLoad();
  }
}
