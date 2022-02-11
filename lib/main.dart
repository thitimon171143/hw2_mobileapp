import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController cnfpassword = TextEditingController();
  TextEditingController mobile = TextEditingController();

  @override
  void initState() {
    username.text = ""; //innitail value of text field
    email.text = "";
    password.text = "";
    cnfpassword.text = "";
    mobile.text = "";
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          appBar: AppBar( 
             title: Text("REGISTER"),
             backgroundColor: Colors.greenAccent,
          ),
          body: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Image.asset(
                "assets/images/person.jpg",
                height: 180,
                ),

                TextField( 
                  controller: username,
                  decoration: InputDecoration( 
                      labelText: "Username",
                      prefixIcon: Icon(Icons.person),
                      border: myinputborder(),
                      enabledBorder: myinputborder(),
                      focusedBorder: myfocusborder(),
                  )
                ),

                Container(height:10),

                 TextField( 
                  controller: email,
                  decoration: InputDecoration( 
                      labelText: "Email Address",
                      prefixIcon: Icon(Icons.email),
                      border: myinputborder(),
                      enabledBorder: myinputborder(),
                      focusedBorder: myfocusborder(),
                  )
                ),

                Container(height:10),

                 TextField( 
                  controller: password,
                  decoration: InputDecoration( 
                      labelText: "Password",
                      prefixIcon: Icon(Icons.lock),
                      border: myinputborder(),
                      enabledBorder: myinputborder(),
                      focusedBorder: myfocusborder(),
                  )
                ),

                Container(height:10),

                 TextField( 
                  controller: cnfpassword,
                  decoration: InputDecoration( 
                      labelText: "Confirm Password",
                      prefixIcon: Icon(Icons.lock),
                      border: myinputborder(),
                      enabledBorder: myinputborder(),
                      focusedBorder: myfocusborder(),
                  )
                ),

                Container(height:10),

                TextField( 
                  controller: mobile,
                  decoration: InputDecoration( 
                      prefixIcon: Icon(Icons.phone),
                      labelText: "Mobile",
                      enabledBorder: myinputborder(),
                      focusedBorder: myfocusborder(),
                  )
                ),

                Container(
                padding: const EdgeInsets.all(10.30),
                child: TextButton(
                  child: Text(
                    "REGISTER",
                    style: TextStyle(fontSize: 20),
                  ),
                  style: TextButton.styleFrom( 
                    primary: Colors.white,
                    backgroundColor: Colors.greenAccent,
                  ),
                  onPressed: () {},
                ),
              ),

              Container(
                alignment: Alignment.centerRight,
                child: Text(
                  "Already have an Account ?",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),

              Container(
                alignment: Alignment.centerRight,
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.greenAccent,
                  ),
                ),
              ),

              /*RichText(
                text: TextSpan(
                style: TextStyle(
                  color: Colors.grey, fontSize: 20.0,
                ),
                children: <TextSpan>[
              TextSpan(
                text: 'Login',
                style: TextStyle(
                  color: Colors.greenAccent,
                ),
                recognizer: TapGestureRecognizer()
                ..onTap = () {
                  print('Login"');
                }),
                ],
                ),
                ),*/
              ],
            ),
          )
       );
  }

  OutlineInputBorder myinputborder(){ //return type is OutlineInputBorder
    return OutlineInputBorder( //Outline border type for TextFeild
      borderRadius: BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(
          color:Colors.redAccent,
          width: 3,
        )
    );
  }

  OutlineInputBorder myfocusborder(){
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(
          color:Colors.greenAccent,
          width: 3,
        )
    );
  }
  //create a function like this so that you can use it wherever you want
}