import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_statemanagement/controller/controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Get.snackbar('Button pressed', ' message');
          Get.find<Controller>().increment();
        },
      ),
      body: Center(
          child: GetBuilder<Controller>(
        init: Controller(),
        builder: (controller) =>
         Text('Counter Value:  ${controller.counter}'),
      )),
    );
  }
}
