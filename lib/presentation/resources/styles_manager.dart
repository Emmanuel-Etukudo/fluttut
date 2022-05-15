import 'package:flutter/material.dart';
import 'package:tutorial_app/presentation/resources/font_manager.dart';

TextStyle _getTextStyle(
    double fontSize, String fontFamily, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: color);
}

// regular style
TextStyle getRegularStyle({
  double fontSize = FontSize.s12, required Color color
}){
  return _getTextStyle(fontSize, FontConstants.fontFamily, FontWeightManager.regular, color);
}

// bold style
TextStyle getBoldStyle({
  double fontSize = FontSize.s12, required Color color
}){
  return _getTextStyle(fontSize, FontConstants.fontFamily, FontWeightManager.bold, color);
}

// black style
TextStyle getBlackStyle({
  double fontSize = FontSize.s12, required Color color
}){
  return _getTextStyle(fontSize, FontConstants.fontFamily, FontWeightManager.black, color);
}
// extra bold style
TextStyle getExtraBoldStyle({
  double fontSize = FontSize.s12, required Color color
}){
  return _getTextStyle(fontSize, FontConstants.fontFamily, FontWeightManager.extraBold, color);
}

// extra light style
TextStyle getExtraLightStyle({
  double fontSize = FontSize.s12, required Color color
}){
  return _getTextStyle(fontSize, FontConstants.fontFamily, FontWeightManager.extraLight, color);
}

// light style
TextStyle getLightStyle({
  double fontSize = FontSize.s12, required Color color
}){
  return _getTextStyle(fontSize, FontConstants.fontFamily, FontWeightManager.extraLight, color);
}

// medium style
TextStyle getMediumStyle({
  double fontSize = FontSize.s12, required Color color
}){
  return _getTextStyle(fontSize, FontConstants.fontFamily, FontWeightManager.medium, color);
}

// semi bold style
TextStyle getSemiBoldStyle({
  double fontSize = FontSize.s12, required Color color
}){
  return _getTextStyle(fontSize, FontConstants.fontFamily, FontWeightManager.semiBold, color);
}

// thin style
TextStyle getThinStyle({
  double fontSize = FontSize.s12, required Color color
}){
  return _getTextStyle(fontSize, FontConstants.fontFamily, FontWeightManager.thin, color);
}

