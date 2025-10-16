import 'package:flutter/material.dart';

abstract class AppResponsive
{
  static double height(context, {required double value}) =>
      MediaQuery.of(context).size.height * (value / 1543);
  static double width(context, {required double value}) =>
      MediaQuery.of(context).size.width * (value / 360);
}