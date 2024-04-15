import 'package:bonfire/tiled/map_world_by_tiled.dart';
import 'package:flutter/material.dart';
import 'package:bonfire/bonfire.dart';

import 'player_sprite_sheet.dart';

class NinjaPlayer extends SimplePlayer {
  NinjaPlayer({
    required super.position,
    required SpriteSheet spriteSheet,
  }) : super(
          size: Vector2(32, 32),
          speed: 100,
          initDirection: Direction.down,
          animation: PlayerSpriteSheet.simpleDirectionAnimation,
        );
}
