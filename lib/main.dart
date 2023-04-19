import 'package:employee_record/add_employee_details/add_employee_screen.dart';
import 'package:employee_record/utils/coonststring.dart';
import 'package:employee_record/utils/customfontstyle.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(title: CoonstString.employeeList),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void goToAddEmployeeScreen() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const AddEmployeeDetails()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,style: CustomFontStyle().fontStyleSize16(),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Text(
              CoonstString.noRecord, style: CustomFontStyle().fontStyleSize16()
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: goToAddEmployeeScreen,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: const Icon(Icons.add),
      ),
    );
  }
}
