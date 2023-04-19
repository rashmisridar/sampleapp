import 'package:employee_record/add_employee_details/add_employeeview_screen.dart';
import 'package:employee_record/utils/coonststring.dart';
import 'package:employee_record/utils/customfontstyle.dart';
import 'package:flutter/material.dart';

class AddEmployeeDetails extends StatelessWidget {
  const AddEmployeeDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(CoonstString.addEmplyeeDetails,
          style: CustomFontStyle().fontStyleSize16(),),
      ),
      body: const AddEmployeeViewScreen(),
    );
  }
}


