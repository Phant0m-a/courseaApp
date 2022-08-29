import 'package:course_app/constants/colors.dart';
import 'package:flutter/material.dart';

class Module {
  Color iconBorder;
  Color iconBg;
  Color iconColor;
  IconData icon;
  String title;
  String desc;
  Color moduleBorder;
  Color moduleBg;
  Color colorButton;
  Color buttonFont;
  String time;
  String lesson;

  Module(
    this.iconBorder,
    this.iconBg,
    this.iconColor,
    this.icon,
    this.title,
    this.desc,
    this.moduleBorder,
    this.moduleBg,
    this.colorButton,
    this.buttonFont,
    this.time,
    this.lesson,
  );

  static List<Module> generateModules() {
    return [
      Module(
          kAccent,
          kAccent,
          Colors.white,
          Icons.play_arrow_rounded,
          'Getting Started',
          'Lets begin the journey with this brand new course',
          kPrimaryLight,
          kPrimaryLight,
          kPrimary,
          kPrimaryDark,
          '25 min',
          '7 lessons'),

        Module(kFontLight.withOpacity(0.3), Colors.white, kFontLight.withOpacity(.7), Icons.lock_outline_rounded, 'Fundamentals', 'It covers the basic concepts & involves the revision of base concepts', kPrimaryLight,Colors.white, Colors.grey.withOpacity(.2),Colors.grey, '32 min', '4  lessons')
    ];
  }
}
