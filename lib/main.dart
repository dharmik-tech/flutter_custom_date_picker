import 'package:flutter/material.dart';
import 'package:rti_employee/screens/employee_list_screen.dart';
import 'package:rti_employee/utils/color_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RTI Employee',
      theme: ThemeData(
          fontFamily: 'Roboto',
          colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: AppColor.primaryBlue,
            onPrimary: Colors.white,
            secondary: AppColor.secondaryBlue,
            onSecondary: Colors.white,
            error: AppColor.red,
            onError: Colors.white,
            background: Colors.white,
            onBackground: Colors.white,
            surface: Colors.white,
            onSurface: AppColor.fontBlack,
          )),
      home: const EmployeeListScreen(),
    );
  }
}
