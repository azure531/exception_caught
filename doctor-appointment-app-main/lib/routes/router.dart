import 'dart:js';

import 'package:flutter/material.dart';
import 'package:medicare/screens/doctor_detail.dart';
import 'package:medicare/screens/home.dart';
import 'package:medicare/screens/login.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/login': (context) => Login(),
  '/home':(context)=>Home(),
  '/detail': (context) => SliverDoctorDetail(),
};
