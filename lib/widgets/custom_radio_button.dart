import 'package:flutter/material.dart';
import 'package:ipala/core/app_export.dart';

class CustomRadioButton extends StatelessWidget {
  CustomRadioButton(
      {this.fontStyle,
      this.margin,
      this.onChange,
      this.iconSize,
      this.value,
      this.groupValue,
      this.text});

  RadioFontStyle? fontStyle;

  EdgeInsetsGeometry? margin;

  Function(String)? onChange;

  double? iconSize;

  String? value;

  String? groupValue;

  String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: InkWell(
        onTap: () {
          onChange!(value!);
        },
        child: IntrinsicWidth(
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            minLeadingWidth: getHorizontalSize(iconSize ?? 0),
            horizontalTitleGap: getHorizontalSize(
              10,
            ),
            leading: Radio<String>(
              value: value ?? "",
              groupValue: groupValue,
              onChanged: (value) {
                onChange!(value!);
              },
            ),
            title: Text(
              text ?? "",
              style: _setFontStyle(),
            ),
          ),
        ),
      ),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      default:
        return TextStyle(
          color: ColorConstant.black900E5,
          fontSize: getFontSize(
            24,
          ),
          fontFamily: 'Josefin Sans',
          fontWeight: FontWeight.w600,
        );
        ;
    }
  }
}

enum RadioFontStyle {
  JosefinSansRomanSemiBold24,
}
