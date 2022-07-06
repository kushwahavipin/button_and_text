import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  late String title;
  MyHomePage({required this.title});
  TextEditingController data = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Field And Button"),
      ),
      body: Column(
        children: [
          TextField(
            controller: data,
          ),
          ElevatedButton(
              onPressed: () {
               modular();
              },
              child: Text(title)),
          const Text("No Data Enter"),

        ],
      ),
    );
  }

  void modular() {
    var extractedData = data.text;
    print(extractedData);
    Fluttertoast.showToast(
        msg: extractedData,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.blue,
        fontSize: 16.0
    );
  }
}
