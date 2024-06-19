import 'package:bonfire/bonfire.dart';

import '../constants/globals.dart';

class Wall extends SimpleNpc {
  bool _observed = false;

  Wall({
    required super.position,
    // required Image wall,
  }) : super(
          size: Vector2(Globals.tileSize, Globals.tileSize),
        );
  @override
  Future<void> onLoad() {
    add(RectangleHitbox(size: size));
    return super.onLoad();
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);

    if (_observed) {
      print('_observed.');
    } else {
      print('!_observed.');
    }
  }

  @override
  void update(double dt) {
    super.update(dt);

    seeAndMoveToPlayer(
      radiusVision: 100,
      observed: () {
        if (!_observed) {
          _observed = true;
        }
      },
      notObserved: () {
        _observed = false;
        return _observed;
      },
    );
  }
}
