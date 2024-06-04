import 'package:bonfire/bonfire.dart';
import 'package:bonfire_test/npcs/bs_samurai_npc.dart';
import 'package:bonfire_test/npcs/pl_okami_npc.dart';
import 'package:flutter/material.dart';

import '../constants/globals.dart';
import '../sprite_sheets/green_ninja_sprite_sheet.dart';
import '../sprite_sheets/bs_samurai_sprite_sheet.dart';
import '../sprite_sheets/pl_okami_sprite_sheet.dart';
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
      player: GreenNinjaPlayer(
        position: Vector2(10, 20),
        spriteSheet: GreenNinjaSpriteSheet.spriteSheet,
        velocity: Vector2(150, 150),
      ),
      playerControllers: [
        Joystick(
          directional: JoystickDirectional(),
        ),
      ],
      map: WorldMapByTiled(
        WorldMapReader.fromAsset(Globals.map),
        forceTileSize: Vector2(
          Globals.tileSize,
          Globals.tileSize,
        ),
        objectsBuilder: {
          'bs_samurai': (properties) => BsSamuraiNpc(
              position: Vector2(300, 300),
              spriteSheet: BsSamuraiSpriteSheet.spriteSheet),
          'pl_okami': (properties) => PlOkamiNpc(
              position: Vector2(600, 600),
              spriteSheet: PlOkamiSpriteSheet.spriteSheet),
        },
      ),
    );
  }
}
