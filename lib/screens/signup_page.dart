import 'package:flutter/material.dart';
import 'login_page.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SignUpPage>{
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }


  initWidget(){

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(90), bottomRight: Radius.circular(90)
                  ),
                  color: new Color(0xffF5591F),
                  gradient: LinearGradient(colors: [(new Color(0xff1393aa)),(new Color(0xff1fceee))],
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 50),
                        child: Image.asset("images/signUp.png"),
                        height: 90,
                        width: 90,
                      )
                    ],
                  ),
                )
            ),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 54,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[300],
                  boxShadow:[
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Color(0xffEEEEEE)
                    ),
                  ]
              ),
              child: TextField(
                cursorColor: Color(0xff1393aa),
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.email,
                      color: Color(0xff1393aa),
                    ),
                    hintText: "Email Address",
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none
                ),
              ),
            ),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 54,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[300],
                  boxShadow:[
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Color(0xffEEEEEE)
                    ),
                  ]
              ),
              child: TextField(
                cursorColor: Color(0xff1393aa),
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.vpn_key,
                      color: Color(0xff1393aa),
                    ),
                    hintText: "Password",
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none
                ),
              ),
            ),

            GestureDetector(
              onTap: (){
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 54,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [(new Color(0xff1393aa)),(new Color(0xff1fceee))],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight
                  ),
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[300],
                  boxShadow: [BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)
                  )
                  ],
                ),
                child: Text(
                  "SIGN UP",
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Keep me signed in?"),
                  GestureDetector(
                    child: Text(
                      "Already a member?",
                      style: TextStyle(
                          color: Color(0xff1393aa)
                      ),
                    ),
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          )
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}