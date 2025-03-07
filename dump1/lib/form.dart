import 'package:dump1/details.dart';
import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {

  var _productName;
  final _productController = TextEditingController();

  @override
  void dispose() {
    _productController.dispose();
    super.dispose();
  }

  void _updateText() {
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            
            TextFormField(
              controller: _productController,
              decoration: InputDecoration(
                labelText: 'Product Name',
                prefixIcon: Icon(Icons.verified_user_outlined),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20,),
            myBtn(context),
          ],
        ),
      )
    );
  }

  OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
        onPressed: () {
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (context) {
              return Details(productName: _productController.text,);
            }),
          );
        }, 
        child: Text(
          "Submit Form".toUpperCase(),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
      );
  }
}