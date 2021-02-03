import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonContents extends StatelessWidget {
  final double iconSize;
  final String text;
  final String iconUrl;
  final TextStyle textStyle;
  final bool darkMode;
  final double separator;
  final Color textColor;
  final bool isIcon;

  ButtonContents({
    this.iconSize,
    this.text = '',
    this.iconUrl,
    this.textStyle,
    this.darkMode = false,
    this.separator,
    this.textColor,
    this.isIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return isIcon
        ? SvgPicture.asset(
            iconUrl,
            width: iconSize,
            height: iconSize,
          )
        : Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: SvgPicture.asset(
                  iconUrl,
                  width: iconSize,
                  height: iconSize,
                ),
              ),
              Expanded(
                flex: 8,
                child: Text(
                  text,
                  style: textStyle ??
                      TextStyle(
                        color: (textColor) ??
                            (darkMode ? Colors.white : Colors.black),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.50,
                      ),
                ),
              ),
            ],
          );
  }
}
