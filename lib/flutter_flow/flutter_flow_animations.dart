import 'dart:math';

import 'package:flutter/material.dart';

enum AnimationTrigger {
  onPageLoad,
  onActionTrigger,
}

class AnimationInfo {
  AnimationInfo({
    this.curve = Curves.easeInOut,
    required this.trigger,
    required this.duration,
    this.delay = 0,
    this.fadeIn = false,
    this.slideOffset,
    this.scale = 0,
  });

  final Curve curve;
  final AnimationTrigger trigger;
  final int duration;
  final int delay;
  final bool fadeIn;
  final Offset? slideOffset;
  final double scale;
  CurvedAnimation? curvedAnimation;
}

void createAnimation(AnimationInfo animation, TickerProvider vsync) {
  animation.curvedAnimation = CurvedAnimation(
    parent: AnimationController(
      duration: Duration(milliseconds: animation.duration),
      vsync: vsync,
    ),
    curve: animation.curve,
  );
}

void startPageLoadAnimations(Iterable<AnimationInfo> animations, TickerProvider vsync) {
  animations.forEach((animation) async {
    createAnimation(animation, vsync);
    await Future.delayed(
      Duration(milliseconds: animation.delay),
      () => (animation.curvedAnimation?.parent as AnimationController).forward(from: 0.0),
    );
  });
}

void setupTriggerAnimations(Iterable<AnimationInfo> animations, TickerProvider vsync) {
  animations.forEach((animation) {
    createAnimation(animation, vsync);
    (animation.curvedAnimation?.parent as AnimationController).forward(from: 1.0);
  });
}

extension AnimatedWidgetExtension on Widget {
  Widget animated(Iterable<AnimationInfo> animationInfos) {
    final animationInfo = animationInfos.first;
    return AnimatedBuilder(
      animation: animationInfo.curvedAnimation!.parent,
      builder: (context, child) {
        var returnedWidget = child;
        if (animationInfo.slideOffset != null) {
          final animationValue = 1 - animationInfo.curvedAnimation!.value;
          returnedWidget = Transform.translate(
            child: returnedWidget,
            offset: (animationInfo.slideOffset ?? Offset(0, 0)) * -animationValue,
          );
        }
        if (animationInfo.scale > 0 && animationInfo.scale != 1.0) {
          returnedWidget = Transform.scale(
            scale: animationInfo.scale + (1.0 - animationInfo.scale) * animationInfo.curvedAnimation!.value,
            child: returnedWidget,
          );
        }
        if (animationInfo.fadeIn) {
          // In cases where the child tree has a Material widget with elevation,
          // opacity animations may result in sudden box shadow "glitches"
          // To prevent this, opacity is animated up to but NOT including 1.0.
          // It is impossible to tell the difference between 0.998 and 1.0 opacity.
          returnedWidget = Opacity(
            opacity: min(0.998, animationInfo.curvedAnimation!.value),
            child: returnedWidget,
          );
        }
        return returnedWidget ?? SizedBox();
      },
      child: animationInfos.length > 1 ? animated(animationInfos.skip(1)) : this,
    );
  }
}
