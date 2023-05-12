import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SimplePageView(),
    );
  }
}

class SimplePageView extends StatefulWidget {
  const SimplePageView({super.key});

  @override
  State<SimplePageView> createState() => _SimplePageViewState();
}

class _SimplePageViewState extends State<SimplePageView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(
          children: [
            Center(
                child: Container(
              height: 300,
              width: 300,
              color: Colors.red,
              child: const Center(
                child: Text(
                  "1",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )),
            Center(
                child: Container(
              height: 300,
              width: 300,
              color: Colors.yellow,
              child: const Center(
                child: Text(
                  "2",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            )),
            Center(
                child: Container(
              height: 300,
              width: 300,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  "3",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            )),
            Center(
                child: Container(
              height: 300,
              width: 300,
              color: Colors.green,
              child: const Center(
                child: Text(
                  "4",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
