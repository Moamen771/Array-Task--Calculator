import 'package:calculator/widgets/operation_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var num1 = TextEditingController();
  var num2 = TextEditingController();
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60))),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 16,
                children: [
                  TextFormField(
                    controller: num1,
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      hintText: "Num1",
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 2, color: Colors.black),
                          borderRadius: BorderRadius.circular(12)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                  TextFormField(
                    controller: num2,
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      hintText: "Num2",
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 2, color: Colors.black),
                          borderRadius: BorderRadius.circular(12)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 24,
                  width: 50,
                  color: Colors.teal.shade800,
                ),
                Text(
                  "Result = $result",
                  style: const TextStyle(fontSize: 16),
                ),
                Container(
                  height: 24,
                  width: 50,
                  color: Colors.teal.shade800,
                ),
              ],
            )),
        Expanded(
          flex: 2,
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(60),
                    topLeft: Radius.circular(60))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OperationButton(() {
                  setState(() {
                    result = double.parse(num1.text) + double.parse(num2.text);
                  });
                }, '+'),
                OperationButton(() {
                  setState(() {
                    result = double.parse(num1.text) - double.parse(num2.text);
                  });
                }, '-'),
                OperationButton(() {
                  setState(() {
                    result = double.parse(num1.text) * double.parse(num2.text);
                  });
                }, 'X'),
                OperationButton(() {
                  setState(() {
                    result = double.parse(num1.text) / double.parse(num2.text);
                  });
                }, '/')
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
