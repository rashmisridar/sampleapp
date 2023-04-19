import 'package:flutter/material.dart';
class AddEmployeeViewScreen extends StatefulWidget {
  const AddEmployeeViewScreen({Key? key}) : super(key: key);

  @override
  State<AddEmployeeViewScreen> createState() => _AddEmployeeViewScreenState();
}

class _AddEmployeeViewScreenState extends State<AddEmployeeViewScreen> {
  TextEditingController employeeName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller:employeeName,
            decoration: const InputDecoration(
              labelText: "Username",
              icon: Icon(Icons.people), //icon at head of input
            )

        )
      ],
    );
  }
}
