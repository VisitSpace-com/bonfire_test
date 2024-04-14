import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';

class TaxOffice extends StatefulWidget {
  const TaxOffice({super.key});

  @override
  State<TaxOffice> createState() => _TaxOfficeState();
}

const tilemap = 'assets/images/tax-office-tile.json';

class _TaxOfficeState extends State<TaxOffice> {
  @override
  Widget build(BuildContext context) {
    return BonfireWidget(
      map: WorldMapByTiled(
        TiledReader.asset(tilemap),
        forceTileSize: Vector2(32, 32),
      ),
      joystick: Joystick(
        directional: JoystickDirectional(),
      ),
    );
  }
}
