import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Widget을 상하좌우로 배치하기'),
        backgroundColor: Colors.blue,
      ),
      body: Body(),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // 수평 스크롤 scrollDirection: Axis.horizontal,
      // 수직 스크롤 scrollDirection: Axis.vertical,
    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            // Column을 사용하면 수직으로 배치된다.
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  width: 100,
                  height: 80,
                  child: Text('Container1'),
                  color: Colors.red),
              Container(
                  width: 100,
                  height: 80,
                  child: Text('Container2'),
                  color: Colors.green),
              Container(
                  width: 100,
                  height: 80,
                  child: Text('Container3'),
                  color: Colors.blue),
            ],
          ),
          Container(
            width: 300,
            height: 120,
            color: Colors.grey,
            child: Text('Container4'),
          ),
          Container(
            width: 300,
            height: 120,
            color: Colors.grey,
            child: Text('Container5'),
          ),
          Container(
            width: 300,
            height: 120,
            color: Colors.grey,
            child: Text('Container6'),
          ),
          Container(
            width: 300,
            height: 120,
            color: Colors.grey,
            child: Text('Container7'),
          ),
          Container(
            width: 300,
            height: 120,
            color: Colors.grey,
            child: Text('Container8'),
          ),
          Container(
            width: 300,
            height: 120,
            color: Colors.grey,
            child: Text('Container9'),
          )
        ],
      ),
    );
  }
}
