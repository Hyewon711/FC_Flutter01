import 'package:flutter/material.dart';

/// part2. ch01.05
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Study to Container'),
      ),
      body: CustomContainer(),
    ),
  ));
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        padding: EdgeInsets.fromLTRB(10, 12, 10, 12),
        decoration: BoxDecoration(
          color: Colors.amber.shade200,
          border: Border.all(color: Colors.red, width: 5, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.3), offset: Offset(6, 6), blurRadius: 10, spreadRadius: 10),
            BoxShadow(color: Colors.blue.withOpacity(0.3), offset: Offset(6, 6), blurRadius: 10, spreadRadius: 10)
          ],
        ),
        child: Center(child: Container(
            color: Colors.green,
            child: Text('Hello Container'))),
      ),
    );
  }
}

/// part2. ch01.04
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           actions: [
//             IconButton(onPressed: (){
//               print('Tab!');
//             }, icon: Icon(Icons.home)),
//             Icon(Icons.play_arrow)
//           ],
//           centerTitle: false,
//           title: Text('This is App bar'),
//           backgroundColor: Colors.blue,
//         ),
//           body: TestWidget(),
//         floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.bug_report),
//           onPressed: () {
//             print('Tab! FAB');
//           },
//         ),
//       ),
//     ),
//   );
// }
//
// class TestWidget extends StatelessWidget {
//   const TestWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Center(
//         child: Text(
//           'Hello Flutter',
//           style: TextStyle(
//             fontSize: 60,
//             color: Colors.black,
//           ),
//         ),
//       ),
//     );
//   }
// }
