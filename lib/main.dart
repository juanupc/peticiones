import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peticiones/domain/controllers/controlleruser.dart';
import 'package:peticiones/ui/app.dart';

void main() {
  runApp(const MyApp());
  Get.put(UserController());
}
