import 'package:flutter/material.dart';
class AsosiyOyna extends StatefulWidget {
  const AsosiyOyna({ Key? key }) : super(key: key);

    static final String id = "AsosiyOyna";

  @override
  _AsosiyOynaState createState() => _AsosiyOynaState();
}

class _AsosiyOynaState extends State<AsosiyOyna> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text("Succefull",style: TextStyle(color: Colors.orange,fontSize: 30),),
      ),
    );
  }
}