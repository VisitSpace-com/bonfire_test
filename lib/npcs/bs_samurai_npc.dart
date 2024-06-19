import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/animation_configs.dart';
import '../constants/globals.dart';
import '../dialogs/balance_sheet_dialog.dart';
import '../sprite_sheets/green_ninja_sprite_sheet.dart';
import '../sprite_sheets/bs_samurai_sprite_sheet.dart';

class BsSamuraiNpc extends SimpleNpc with TapGesture, Lighting {
  bool _observed = false;
  late TextPaint _textPaint;

  BsSamuraiNpc({
    required super.position,
    required SpriteSheet spriteSheet,
  }) : super(
          size: Vector2(Globals.playerSize, Globals.playerSize),
          speed: 0,
          initDirection: Direction.down,
          animation:
              AnimationConfigs.playersAnimation(spriteSheet: spriteSheet),
        ) {
    _textPaint = TextPaint(
      style: const TextStyle(
        color: Colors.white,
        fontSize: Globals.playerSize / 2,
      ),
    );
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

  @override
  void onTap() {
    _showDialogTalk();
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);

    if (_observed) {
      _textPaint.render(
        canvas,
        'BS Samurai',
        Vector2(-30, -25),
      );
      // print('collided by BS Samurai');
    }
  }

  @override
  void update(double dt) {
    super.update(dt);

    seeAndMoveToPlayer(
      radiusVision: Globals.radiusVision,
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

  void _showDialogTalk() {
    if (_observed) {
      gameRef.camera.moveToTargetAnimated(
          target: this,
          zoom: 2,
          onComplete: () {
            TalkDialog.show(
              gameRef.context,
              [
                _speak(
                    text: '会社経営とは、自社の貸借対照表を知るということだ。\nお主、BSをしっかり理解しておるか？',
                    isHero: false),
                _speak(text: 'あ、はい・・・。大丈夫です。', isHero: true),
                _speak(text: 'では、拙者がお主のBSを分析して差し上げよう。', isHero: false),
                _speak(text: 'お、お願いします。', isHero: true),
              ],
              logicalKeyboardKeysToNext: [
                LogicalKeyboardKey.space,
                LogicalKeyboardKey.enter,
              ],
              onClose: () {
                gameRef.camera.moveToPlayerAnimated(zoom: 1);
                BalanceSheetDialog.show(gameRef.context);
              },
            );
          });
    }
  }

  Say _speak({
    required String text,
    required bool isHero,
  }) =>
      Say(
        text: [
          TextSpan(text: text),
        ],
        person: SizedBox(
          height: Globals.dialogBox,
          width: Globals.dialogBox,
          child: isHero
              ? GreenNinjaSpriteSheet.spriteSheet.getSprite(0, 0).asWidget()
              : BsSamuraiSpriteSheet.spriteSheet.getSprite(0, 0).asWidget(),
        ),
        personSayDirection:
            isHero ? PersonSayDirection.LEFT : PersonSayDirection.RIGHT,
      );
}
