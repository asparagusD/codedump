import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  List<String> products = ["Bed", "Sofa", "Chair"];
  List<String> productDetails = [
    "King Size Bed",
    "King Size Sofa",
    "Wooden Chair",
  ];
  List<int> price = [3000, 2500, 1860];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Floating Action Button"),
        backgroundColor: Colors.blueGrey,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: Icon(Icons.add),
        backgroundColor: Colors.black87,
        foregroundColor: Colors.yellow,
        // elevation: 0,
        // shape: BeveledRectangleBorder(
        //   borderRadius: BorderRadius.circular(20),
        //   side: BorderSide(color: Colors.blue, width: 2, style: BorderStyle.solid),
        // ),
        // mini: true,
      ),
    );
  }
}
