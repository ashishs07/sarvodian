import 'package:flutter/material.dart';

import './screens/select_login.dart';

import './screens/student/auth_screen.dart';
import './screens/student/home_screen/home_screen.dart';
import './screens/admin/auth_screen.dart';
import './screens/admin/home_screen.dart';
import './screens/guest/auth_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  SelectLoginScreen.routeName: (ctx) => SelectLoginScreen(),
  //
  StudentAuthScreen.routeName: (ctx) => StudentAuthScreen(),
  StudentHomeScreen.routeName: (ctx) => StudentHomeScreen(),
  //
  AdminAuthScreen.routeName: (ctx) => AdminAuthScreen(),
  AdminHomeScreen.routeName: (ctx) => AdminHomeScreen(),
  //
  GuestAuthScreen.routeName: (ctx) => GuestAuthScreen(),
};
