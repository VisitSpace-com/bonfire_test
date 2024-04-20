import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';

import '../constants/globals.dart';
import '../sprite_sheets/green_ninja_sprite_sheet.dart';
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
        map: WorldMapByTiled(
          TiledReader.asset(Globals.tileMap),
          forceTileSize: Vector2(
            Globals.tileSize,
            Globals.tileSize,
          ),
        ),
        joystick: Joystick(directional: JoystickDirectional()),
        player: GreenNinjaPlayer(
          position: Vector2(100, 200),
          spriteSheet: GreenNinjaSpriteSheet.spriteSheet,
        ));
  }
}
