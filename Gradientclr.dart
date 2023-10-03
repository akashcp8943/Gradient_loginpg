import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:job/bottomnavigations.dart';
//import 'package:job/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade400,
        body: Builder(
          builder: (context) {
            var screenSize = MediaQuery.of(context).size;

            return SingleChildScrollView(
              child: Container(
                width: screenSize.width,
                height: screenSize.height,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    colors: [
                      Color(0xFFFFA756), // Color constant for #FFA756
                      Color(0xFFFFA756), // Color constant for #FFA756
                    ],
                  ),
                ),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: screenSize.height * 0.2),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Login",
                              style:
                              TextStyle(color: Colors.white, fontSize: 40),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Welcome back",
                              style:
                              TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenSize.height * 0.10,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(60),
                              topRight: Radius.circular(60),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(35.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    children: [
                                      TextField(
                                        decoration: InputDecoration(
                                          hintText: 'Email',
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      TextField(
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          hintText: 'Password',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 15),
                                InkWell(
                                  onTap: () {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) => Bottom()));
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [Colors.orange, Colors.white],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      ),
                                      borderRadius: BorderRadius.circular(50),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey
                                              .withOpacity(0.5), // Shadow color
                                          spreadRadius: 2, // Spread radius
                                          blurRadius: 4, // Blur radius
                                          offset: Offset(0,
                                              3), // Offset in the (x, y) direction
                                        ),
                                      ],
                                    ),
                                    width: 130,
                                    height: 50,
                                    child: Center(
                                        child: Text('Login',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500))),
                                  ),
                                ),
                                TextButton(
                                    onPressed: () {
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (context) =>
                                      //             Register()));
                                    },
                                    child: Text(
                                        "Don't have an account? Register here!",
                                        style:
                                        TextStyle(color: Colors.black87))),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
