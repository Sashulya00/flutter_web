import 'dart:async';

import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';
import 'package:water_tracker/data/models/goal_widget_model.dart';
import 'package:water_tracker/data/models/goals.dart';
import 'package:water_tracker/presentation/widgets/icon_image_widget.dart';

class GoalWidget extends StatefulWidget {
  const GoalWidget({
    Key? key,
    required this.model,
    required this.onChanged,
  }) : super(key: key);

  final GoalWidgetModel model;
  final void Function(Goals goals) onChanged;

  @override
  State<GoalWidget> createState() => _GoalWidgetState();
}

class _GoalWidgetState extends State<GoalWidget> with SingleTickerProviderStateMixin {
  static const upperSpace = SizedBox(height: 12);
  static const betweenSpace = SizedBox(height: 14);
  static const widgetHeight = 150;
  static const widgetWidth = 165;
  static const iconTitleSize = 16;

  static const colorAnimationDuration = Duration(milliseconds: 200);
  late final colorAnimationController = AnimationController(
    duration: colorAnimationDuration,
    vsync: this,
  );

  static const sizeAnimationDuration = Duration(seconds: 1);
  late final sizeAnimationController = AnimationController(
    vsync: this,
    duration: sizeAnimationDuration,
    lowerBound: 0.70,
    upperBound: 1.0,
    value: 1,
  )..addListener(() => setState(() {}));

  var chooseGoal = true;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: sizeAnimationController.value,
      child: GestureDetector(
        onTap: () {
          widget.onChanged(widget.model.goal);
          sizeAnimationController.reverse();
          setState(() => chooseGoal = !chooseGoal);
        },
        onTapDown: (dp) => sizeAnimationController.reverse(),
        onTapUp: (dp) => Timer(const Duration(milliseconds: 150), () => sizeAnimationController.fling()),
        onTapCancel: () => sizeAnimationController.fling(),
        child: AnimatedContainer(
          height: widgetHeight.toDouble(),
          width: widgetWidth.toDouble(),
          duration: colorAnimationDuration,
          decoration: BoxDecoration(
            color: chooseGoal ? CustomTheme.backgroundSexBottomColor : CustomTheme.mainColor,
            borderRadius: const BorderRadius.all(Radius.circular(16)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              upperSpace,
              IconImageWidget(widget.model.imagePath),
              betweenSpace,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  widget.model.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: iconTitleSize.toDouble(),
                    color: chooseGoal ? CustomTheme.mainColor : Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
