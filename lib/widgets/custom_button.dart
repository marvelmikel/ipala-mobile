import 'package:flutter/material.dart';
import 'package:ipala/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        getHorizontalSize(width ?? 0),
        getVerticalSize(height ?? 0),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll22:
        return getPadding(
          all: 22,
        );
      case ButtonPadding.PaddingAll19:
        return getPadding(
          all: 19,
        );
      case ButtonPadding.PaddingAll16:
        return getPadding(
          all: 16,
        );
      case ButtonPadding.PaddingT17:
        return getPadding(
          top: 17,
          right: 17,
          bottom: 17,
        );
      default:
        return getPadding(
          all: 5,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillDeeporange6006c:
        return ColorConstant.deepOrange6006c;
      case ButtonVariant.FillGreenA700:
        return ColorConstant.greenA700;
      case ButtonVariant.FillOrangeA200:
        return ColorConstant.orangeA200;
      case ButtonVariant.FillAmberA200:
        return ColorConstant.amberA200;
      case ButtonVariant.FillBlue400:
        return ColorConstant.blue400;
      case ButtonVariant.FillGreen600:
        return ColorConstant.green600;
      case ButtonVariant.OutlineDeeporange600:
        return null;
      default:
        return ColorConstant.deepOrange600;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineDeeporange600:
        return BorderSide(
          color: ColorConstant.deepOrange600,
          width: getHorizontalSize(
            1.00,
          ),
        );
      default:
        return null;
        ;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.CircleBorder13:
        return BorderRadius.circular(
          getHorizontalSize(
            13.00,
          ),
        );
      case ButtonShape.RoundedBorder8:
        return BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.JosefinSansRomanSemiBold16:
        return TextStyle(
          color: ColorConstant.deepOrange600,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Josefin Sans',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.JosefinSansRomanSemiBold16Gray200:
        return TextStyle(
          color: ColorConstant.gray200,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Josefin Sans',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.MontserratSemiBold14:
        return TextStyle(
          color: ColorConstant.black900E5,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.JosefinSansRomanSemiBold14:
        return TextStyle(
          color: ColorConstant.gray100,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Josefin Sans',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.MontserratMedium14:
        return TextStyle(
          color: ColorConstant.black900E5,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.JosefinSansRomanRegular14:
        return TextStyle(
          color: ColorConstant.black900E5,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Josefin Sans',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.JosefinSansRomanMedium14:
        return TextStyle(
          color: ColorConstant.black900E5,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Josefin Sans',
          fontWeight: FontWeight.w500,
        );
      default:
        return TextStyle(
          color: ColorConstant.gray100,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Josefin Sans',
          fontWeight: FontWeight.w500,
        );
    }
  }
}

enum ButtonShape {
  Square,
  CircleBorder13,
  RoundedBorder16,
  RoundedBorder8,
}

enum ButtonPadding {
  PaddingAll5,
  PaddingAll22,
  PaddingAll19,
  PaddingAll16,
  PaddingT17,
}

enum ButtonVariant {
  FillDeeporange600,
  FillDeeporange6006c,
  OutlineDeeporange600,
  FillGreenA700,
  FillOrangeA200,
  FillAmberA200,
  FillBlue400,
  FillGreen600,
}

enum ButtonFontStyle {
  JosefinSansRomanMedium12,
  JosefinSansRomanSemiBold16,
  JosefinSansRomanSemiBold16Gray200,
  MontserratSemiBold14,
  JosefinSansRomanSemiBold14,
  MontserratMedium14,
  JosefinSansRomanRegular14,
  JosefinSansRomanMedium14,
}
