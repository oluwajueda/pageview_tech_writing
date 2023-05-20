import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyPageView());

class MyPageView extends StatefulWidget {
  @override
  _MyPageViewState createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  late PageController pageVewController;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _loadIndex();
  }

  _loadIndex() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int index = prefs.getInt('index') ?? 0;
    setState(() {
      pageVewController = PageController(initialPage: index);
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(children: [
          Expanded(
            child: PageView(
              controller: pageVewController,
              children: <Widget>[
                Container(height: 50, width: 50, color: Colors.red),
                Container(height: 50, width: 50, color: Colors.green),
                Container(height: 50, width: 50, color: Colors.blue),
                Container(height: 50, width: 50, color: Colors.yellow),
              ],
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                  _saveIndex(index);
                });
              },
            ),
          ),
          Row(
            children: [
              InkWell(
                onTap: (() {
                  pageVewController.previousPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                }),
                child: Container(
                  child: Text(
                    "prev",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                ),
              ),
              Spacer(),
              InkWell(
                onTap: (() {
                  pageVewController.nextPage(
                      curve: Curves.easeIn,
                      duration: Duration(milliseconds: 500));
                }),
                child: Container(
                  child: Text(
                    "Next",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }

  _saveIndex(int index) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('index', index);
  }

  @override
  void dispose() {
    pageVewController.dispose();
    super.dispose();
  }
}
