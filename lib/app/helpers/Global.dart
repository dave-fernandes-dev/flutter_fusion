import 'package:flutter_mvc/app/controllers/ThemeController.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:logger/logger.dart';

import '../controllers/auth/AuthController.dart';

//======================================
// Get Instance of AuthController
//======================================
AuthController authController = AuthController.to;
AuthController auth = AuthController.to;
ThemeController themeController = ThemeController.to;

//======================================
// Get storage Helper
//======================================
GetStorage storage = new GetStorage();

//======================================
// Image Helper
//======================================
String image(name) {
  return "assets/images/$name";
}

//======================================
// Icon Helper
//======================================
String assetIcon(name) {
  return "assets/icons/$name";
}

//======================================
// Check current route
//======================================
bool routeIs(name) {
  return Get.routing.current == name;
}

//======================================
// Console Logger
//======================================
var log = Logger(
  printer: PrettyPrinter(),
);