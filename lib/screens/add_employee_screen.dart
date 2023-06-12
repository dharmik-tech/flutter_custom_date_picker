import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/color_constants.dart';

class AddEmployeeScreen extends StatefulWidget {
  const AddEmployeeScreen({Key? key}) : super(key: key);

  @override
  State<AddEmployeeScreen> createState() => _AddEmployeeScreenState();
}

class _AddEmployeeScreenState extends State<AddEmployeeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryBlue,
        title: const Text('Add Employee'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
              child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 8),
                child: TextFormField(),
              ),
              Container(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColor.borderGrey),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      children: [
                        // SvgPicture.asset('assets/icons/ic_date.svg'),
                        // Text('Today')
                      ],
                    ),
                  ),
                  Container(),
                ],
              )
            ],
          )),
        ),
      ),
    );
  }
}
