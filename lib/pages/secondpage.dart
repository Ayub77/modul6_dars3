import 'package:flutter/material.dart';
import 'package:modul6_dars3/model/usermodel.dart';
import 'package:modul6_dars3/pages/homepage.dart';
import 'package:modul6_dars3/servis/prefs_servis.dart';

import 'asosiyona.dart';
class SecondPage extends StatefulWidget {
  const SecondPage({ Key? key }) : super(key: key);
    static final String id  = "SecondPage";
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {


  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();
  

  void _isLogin(){

    String name  = nameController.text.toString().trim();
    String email  = emailController.text.toString().trim();
    String phone  = phoneController.text.toString().trim();
    String password  = passwordController.text.toString().trim();
    String confirmpassword  = confirmpasswordController.text.toString().trim();

    User user  = User(name,email,phone,password,confirmpassword);

    Prefs.storeUser(user);
    

  

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 25,vertical: 18),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            colors: [
                Colors.grey.withOpacity(0.5),
                Colors.grey.withOpacity(0.4),
                Colors.grey.withOpacity(0.2),
                Colors.grey.withOpacity(0.1),
            ]
          )
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Container(
                alignment: Alignment.bottomLeft,
                child: Icon(Icons.arrow_back,color: Colors.black,size: 25,),
              ),
              SizedBox(height: 10,),
              Text("Let's Get Started!",style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.bold),),
              SizedBox(height: 5,),
              Text("Create an account to Q Allure to get all features",style: TextStyle(color: Colors.black45,fontSize: 13),),
              SizedBox(height: 30,),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: Colors.blue,
                    width: 2
                  ),
                ),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Name",
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.person_outline)
                  ),
                ),
              ),
              SizedBox(height: 13,),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: Colors.blue,
                    width: 2
                  ),
                ),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.email)
                  ),
                ),
              ),
              SizedBox(height: 13,),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: Colors.blue,
                    width: 2
                  ),
                ),
                child: TextField(
                  controller: phoneController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Phone",
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.phone_iphone)
                  ),
                ),
              ),
              SizedBox(height: 13,),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: Colors.blue,
                    width: 2
                  ),
                ),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.lock_open_rounded)
                  ),
                ),
              ),
              SizedBox(height: 13,),
               Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: Colors.blue,
                    width: 2
                  ),
                ),
                child: TextField(
                  controller: confirmpasswordController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Confirm Password",
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.lock_open_rounded)
                  ),
                ),
              ),
              SizedBox(height: 30,),

              Container(
                height:60,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  color: Colors.blue[800],
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(.3),
                      blurRadius: 3,
                      spreadRadius: 3
                    )
                  ]
                ),
                child: FlatButton(onPressed: _isLogin
                , child: Text("CREATE",style: TextStyle(color: Colors.white,fontSize: 20),)),
              ),
              SizedBox(height: 35,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",style: TextStyle(color: Colors.black),),
                  SizedBox(width: 10,),
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                      Navigator.pushNamed(context, HomePage.id);
                    },
                    child: Text("Login here",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}