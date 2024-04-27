import 'package:bonfire/bonfire.dart';
import 'package:bonfire_test/npcs/bs_samurai_npc.dart';
import 'package:flutter/material.dart';

import '../constants/globals.dart';
import '../sprite_sheets/green_ninja_sprite_sheet.dart';
import '../sprite_sheets/bs_samurai_sprite_sheet.dart';
import '../players/green_ninja_player.dart';

class GreenNinjaGame extends StatefulWidget {
  const GreenNinjaGame({super.key});

  @override
  State<GreenNinjaGame> createState() => _GreenNinjaGameState();
}

class _GreenNinjaGameState extends State<GreenNinjaGame> {
  @override
  Widget build(BuildContext context) {
    return BonfireWidget(
      lightingColorGame: Colors.black.withOpacity(0.3),
      joystick: Joystick(directional: JoystickDirectional()),
      player: GreenNinjaPlayer(
        position: Vector2(100, 200),
        spriteSheet: GreenNinjaSpriteSheet.spriteSheet,
      ),
      map: WorldMapByTiled(TiledReader.asset(Globals.tileMap),
          forceTileSize: Vector2(
            Globals.tileSize,
            Globals.tileSize,
          ),
          objectsBuilder: {
            'bs_samurai': (properties) => BsSamuraiNpc(
                position: properties.position,
                spriteSheet: BsSamuraiSpriteSheet.spriteSheet)
          }),
    );
  }
}
