import 'package:flutter/material.dart';

class CustomIconButtonWidget extends StatelessWidget {
  const CustomIconButtonWidget({
    super.key,
    required this.onTap,
    required this.image,
  });
  final VoidCallback onTap;
  final Image image;
  static const heightWidget = 24.0;
  static const widthWidget = 24.0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: heightWidget,
        width: widthWidget,
        child: image,
      ),
    );
  }
}
