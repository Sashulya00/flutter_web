import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:water_tracker/generated/assets/assets.gen.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';
import 'package:water_tracker/presentation/widgets/molecules/custom_button.dart';

class NotificationWidget extends StatefulWidget {
  const NotificationWidget({
    super.key,
    required this.everyHour,
    required this.everyTwoHour,
  });

  final VoidCallback everyHour;
  final VoidCallback everyTwoHour;

  @override
  State<NotificationWidget> createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends State<NotificationWidget> {

  static const upperFlex = 1;
  static const fontSize = 24.0;
  static const spreadRadius = 3.0;
  static const blurRadius = 12.0;
  static const heightWidget = 362.0;
  static const widthWidget = 375.0;

  static const spaces = SizedBox(height: 20);
  static const widgetRadius = Radius.circular(16);
  static const textPadding = EdgeInsets.symmetric(horizontal: 34);
  static const downFlex = Spacer(flex: upperFlex);
  static const spaceBetweenButtons = SizedBox(height: 16);
  static const paddingInsideButton = EdgeInsets.symmetric(horizontal: fontSize);
  static const offset = Offset(-4, 2);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightWidget,
      width: widthWidget,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorLight,
        borderRadius: const BorderRadius.all(widgetRadius),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor.withOpacity(0.1),
            spreadRadius: spreadRadius,
            blurRadius: blurRadius,
            offset: offset,
          )
        ],
      ),
      child: Column(
        children: [
         spaces,
          Image.asset(Assets.images.notification.path),
          spaces,
          Padding(
            padding: textPadding,
            child: Row(
              children: [
                Flexible(
                  flex: upperFlex,
                  child: Text(
                    LocaleKeys.notification_text.tr(),
                    style: Theme.of(context).textTheme.headline3?.copyWith(
                          fontFamily: Assets.fonts.senRegular,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).primaryColor,
                          fontSize: fontSize,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          downFlex,
          Padding(
            padding: paddingInsideButton,
            child: CustomButton(
              text: LocaleKeys.every_hour.tr(),
              onPressed: widget.everyHour,
              buttonColor: Theme.of(context).dividerColor,
              textButtonColor: Theme.of(context).primaryColor,
            ),
          ),
         spaceBetweenButtons,
          Padding(
            padding: paddingInsideButton,
            child: CustomButton(
              text: LocaleKeys.every_two_hours.tr(),
              onPressed: widget.everyTwoHour,
              buttonColor: Theme.of(context).primaryColor,
              textButtonColor: Theme.of(context).primaryColorLight,
            ),
          ),
          downFlex
        ],
      ),
    );
  }
}
