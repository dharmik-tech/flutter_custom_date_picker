import 'package:flutter/material.dart';
import 'package:rti_employee/utils/color_constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'add_employee_screen.dart';

class EmployeeListScreen extends StatefulWidget {
  const EmployeeListScreen({Key? key}) : super(key: key);

  @override
  State<EmployeeListScreen> createState() => _EmployeeListScreenState();
}

class _EmployeeListScreenState extends State<EmployeeListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgGrey,
      appBar: AppBar(
        backgroundColor: AppColor.primaryBlue,
        title: const Text('Employee List'),
      ),
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const AddEmployeeScreen()));
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColor.primaryBlue,
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SvgPicture.asset('assets/icons/ic_add.svg'),
          ),
        ),
      ),
      body: Center(
        child: SvgPicture.asset('assets/icons/ic_no_employee.svg'),
      ),
    );
  }
}
