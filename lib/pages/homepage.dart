import 'package:flutter/material.dart';
import 'package:modul6_dars3/model/usermodel.dart';
import 'package:modul6_dars3/pages/asosiyona.dart';
import 'package:modul6_dars3/pages/secondpage.dart';
import 'package:modul6_dars3/servis/prefs_servis.dart';
class HomePage extends StatefulWidget {

  const HomePage({ Key? key }) : super(key: key);
      static final String id = "HomePage";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


String myname="";

final emailcontroller = TextEditingController();
final passwordcontroller = TextEditingController();

  void _doLogin(){
  String email = emailcontroller.text.toString().trim();
  String password = passwordcontroller.text.toString().trim();

    User user = User.from(email, password);
    Prefs.storeUser(user);

    
  }
  


 showName(String name){
    setState(() {
      myname = name;
    });
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.grey[100],
            padding: EdgeInsets.all(25),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 10,),
                  Container(
                    height: 130,
                    width: 130,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/images4.png"),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  Text("Welcome back!",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                  Text("Log in to your existant account of Q Allure",style: TextStyle(color: Colors.grey,fontSize: 12),),
                  SizedBox(height: 12,),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.blue,
                        width: 2
                      ),
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child: TextField(
                      controller: emailcontroller,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "email",
                        hintStyle: TextStyle(color: Colors.grey,fontSize: 15),
                        prefixIcon: Icon(Icons.person_outline),
                      ),
                      
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                       color: Colors.white,
                        border: Border.all(
                        color: Colors.blue,
                        width: 2
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: TextField(
                      controller: passwordcontroller,
                       decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "password",
                        hintStyle: TextStyle(color: Colors.grey,fontSize: 15),
                        prefixIcon: Icon(Icons.lock_open_rounded),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: Text("Forgot Password?",style: TextStyle(color: Colors.black,fontSize: 12),)
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 50,
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                        color: Colors.blue[900],
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(.3),
                          blurRadius: 5,
                          spreadRadius: 5
                        ), 
                      ],
                      borderRadius: BorderRadius.circular(25)

                      ),
                      child: FlatButton(onPressed: _doLogin,
                       child: Text("LOG IN",style: TextStyle(color: Colors.white,fontSize: 18),)
                       )
                    ),
                    SizedBox(height: 45,),
                    Text("Or connect using",style: TextStyle(color: Colors.grey[400]),),
                    SizedBox(height: 15,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.blue[800],
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child: FlatButton(onPressed: (){

                              },
                               child: Row(
                                 children: [
                                    Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("assets/images/facebook.png"),
                                          fit: BoxFit.cover
                                        )
                                      ),
                                    ),
                                   SizedBox(width: 10,),
                                   Text("Facebook",style: TextStyle(color: Colors.white,fontSize: 15),)
                                 ],
                               )),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.red[800],
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child: FlatButton(onPressed: (){

                              },
                               child: Row(
                                 children: [
                                   SizedBox(width: 10,),
                                  Text("G",style: TextStyle(color: Colors.white,fontSize: 20),),
                                   SizedBox(width: 15,),
                                   Text("Google",style: TextStyle(color: Colors.white,fontSize: 15),)
                                 ],
                               )),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have-an account?",style: TextStyle(color: Colors.black54),),
                        SizedBox(width: 8,),
                        GestureDetector(
                          onTap: (){
                              Navigator.pop(context);
                              Navigator.pushNamed(context, SecondPage.id);
                          },
                          child: Text(" Sign Up",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),))
                      ],
                    )
                ],
              ),
            ),
          ),
    );
  }
}