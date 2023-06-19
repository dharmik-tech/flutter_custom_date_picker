import 'package:flutter/material.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rti_employee/models/job_role.dart';

import '../utils/color_constants.dart';

class AddEmployeeScreen extends StatefulWidget {
  const AddEmployeeScreen({Key? key}) : super(key: key);

  @override
  State<AddEmployeeScreen> createState() => _AddEmployeeScreenState();
}

class _AddEmployeeScreenState extends State<AddEmployeeScreen> {
  List<JobRole>? jobRoles;

  @override
  void initState() {
    jobRoles = [];
    jobRoles!.add(JobRole(1, 'Product Designer'));
    jobRoles!.add(JobRole(2, 'Flutter Developer'));
    jobRoles!.add(JobRole(3, 'QA Tester'));
    jobRoles!.add(JobRole(4, 'Product Owner'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColor.primaryBlue,
        title: const Text('Add Employee'),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                    child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      height: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColor.borderGrey),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 4.0, right: 16),
                            child:
                                SvgPicture.asset('assets/icons/ic_profile.svg'),
                          ),
                          Expanded(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  hintText: 'Employee Name',
                                  border: InputBorder.none),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(16),
                                      topRight: Radius.circular(16),
                                    ),
                                    border: Border.all(color: Colors.white)),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ListView.separated(
                                      itemBuilder: (context, position) {
                                        return InkWell(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.all(16),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(16),
                                                  topRight: Radius.circular(16),
                                                ),
                                                border: Border.all(
                                                    color: Colors.white)),
                                            // color: Colors.white,
                                            child: Text(
                                              jobRoles![position].role!,
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        );
                                      },
                                      shrinkWrap: true,
                                      itemCount: jobRoles!.length,
                                      separatorBuilder:
                                          (BuildContext context, int index) =>
                                              const Divider(),
                                    )
                                  ],
                                ),
                              );
                            });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 8),
                        height: 40,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColor.borderGrey),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 4.0, right: 16),
                              child: SvgPicture.asset(
                                  'assets/icons/ic_job_role.svg'),
                            ),
                            const Expanded(
                              child: Text('Select role'),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 4.0, right: 16),
                              child: SvgPicture.asset(
                                  'assets/icons/ic_dropdown_arrow.svg'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: Container(
                            margin: const EdgeInsets.only(top: 8),
                            width: MediaQuery.of(context).size.width * .40,
                            height: 40,
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColor.borderGrey),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 4.0, right: 16),
                                  child: SvgPicture.asset(
                                      'assets/icons/ic_date.svg'),
                                ),
                                const Expanded(
                                  child: Text(
                                    'Today',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return Dialog(
                                    backgroundColor: Colors.white,
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(16),)),
                                    alignment: Alignment.center,
                                    elevation: 4,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      padding: const EdgeInsets.all(16),
                                      decoration: const BoxDecoration(
                                          color: Colors.white),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 8),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                MaterialButton(
                                                  onPressed: () {},
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                  ),
                                                  color: AppColor.lightBlue,
                                                  elevation: 0,
                                                  height: 36,
                                                  child: const Text('Today',
                                                      style: TextStyle(
                                                        color: AppColor
                                                            .primaryBlue,
                                                        fontSize: 14,
                                                      )),
                                                ),
                                                MaterialButton(
                                                  onPressed: () {},
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                  ),
                                                  color: AppColor.lightBlue,
                                                  elevation: 0,
                                                  height: 36,
                                                  child:
                                                      const Text('Next Monday',
                                                          style: TextStyle(
                                                            color: AppColor
                                                                .primaryBlue,
                                                            fontSize: 14,
                                                          )),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 8),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                MaterialButton(
                                                  onPressed: () {},
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                  ),
                                                  color: AppColor.lightBlue,
                                                  elevation: 0,
                                                  height: 36,
                                                  child:
                                                      const Text('Next Tuesday',
                                                          style: TextStyle(
                                                            color: AppColor
                                                                .primaryBlue,
                                                            fontSize: 14,
                                                          )),
                                                ),
                                                MaterialButton(
                                                  onPressed: () {},
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                  ),
                                                  color: AppColor.lightBlue,
                                                  elevation: 0,
                                                  height: 36,
                                                  child:
                                                      const Text('After 1 week',
                                                          style: TextStyle(
                                                            color: AppColor
                                                                .primaryBlue,
                                                            fontSize: 14,
                                                          )),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Material(
                                            color: Colors.white,
                                            child: CalendarDatePicker(
                                              initialDate: DateTime.now(),
                                              firstDate: DateTime.now(),
                                              lastDate: DateTime(2050),
                                              onDateChanged: (newDate) {},
                                            ),
                                          ),
                                          const Divider(
                                            height: 1,
                                            color: AppColor.borderGrey,
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                            const Text('selected Dt'),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: [
                                                  MaterialButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          4),
                                                    ),
                                                    color: AppColor.lightBlue,
                                                    elevation: 0,
                                                    height: 36,
                                                    child: const Text('Cancel',
                                                        style: TextStyle(
                                                          color: AppColor
                                                              .primaryBlue,
                                                          fontSize: 14,
                                                        )),
                                                  ),

                                                  const SizedBox(
                                                    width: 16,
                                                  ),
                                                  MaterialButton(
                                                    onPressed: () {},
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          4),
                                                    ),
                                                    color: AppColor.primaryBlue,
                                                    elevation: 0,
                                                    height: 36,
                                                    child: const Text('Save',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 14,
                                                        )),
                                                  ),

                                                ],
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          },
                        ),
                        SvgPicture.asset('assets/icons/ic_right_arrow.svg'),
                        Container(
                          margin: const EdgeInsets.only(top: 8),
                          height: 40,
                          width: MediaQuery.of(context).size.width * .40,
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColor.borderGrey),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 4.0, right: 16),
                                child: SvgPicture.asset(
                                    'assets/icons/ic_date.svg'),
                              ),
                              const Expanded(
                                child: Text(
                                  'No Date',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                )),
              ),
            ),
          ),
          const Divider(
            height: 1,
            color: AppColor.borderGrey,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),
                const SizedBox(
                  width: 16,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Save'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
