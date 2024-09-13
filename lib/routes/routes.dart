import 'package:bottom_nav_practice_1/navbar/navbar.dart';
import 'package:bottom_nav_practice_1/pages/chart.dart';
import 'package:bottom_nav_practice_1/pages/home.dart';
import 'package:bottom_nav_practice_1/pages/note.dart';
import 'package:bottom_nav_practice_1/pages/setting.dart';
import 'package:get/get.dart';

class AppPage {
  static List<GetPage> routes = [
    GetPage(name: navbar, page: () => NavBAr()),
    GetPage(name: home, page: () => Home()),
    GetPage(name: note, page: () => Note()),
    GetPage(name: chart, page: () => Chart()),
    GetPage(name: setting, page: () => Setting()),
  ];

  static getnavbar() => navbar;

  static gethome() => home;

  static getnote() => note;

  static getchart() => chart;

  static getsetting() => setting;

  static String navbar = '/';
  static String home = '/';
  static String note = '/';
  static String chart = '/';
  static String setting = '/';
}
