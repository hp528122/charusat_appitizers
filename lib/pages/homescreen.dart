
import 'package:charusat_new1/pages/Signup.dart';
import 'package:charusat_new1/pages/authentication/firebase_auth.dart';
import 'package:charusat_new1/src/app.dart';
import 'package:charusat_new1/src/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:charusat_new1/animation/fadeAnimation.dart';
import 'package:charusat_new1/buttons/customButton.dart';
import 'package:charusat_new1/buttons/customButtonAnimation.dart';
import 'package:charusat_new1/pages/loginScreen.dart';




class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset("assets/images/images/p1.jpg", fit: BoxFit.cover),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Color(0xFFF001117).withOpacity(0.7),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            margin: EdgeInsets.only(top: 80, bottom: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FadeAnimation(2.4,Text("Canteen App For", style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        letterSpacing: 2
                    ))),
                    FadeAnimation(2.6,Text("Charusat Appetizers", style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold
                    ))),
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    FadeAnimation(2.8,CustomButtonAnimation(
                      label: "Sign up",
                      background: Colors.transparent,
                      fontColor: Colors.white,
                      borderColor: Colors.white,
                      child: Signup(),




                    )),
                    SizedBox(height: 20),
                    FadeAnimation(3.2,CustomButtonAnimation(
                      label: "Sign In",
                      background: Colors.transparent,
                      borderColor: Colors.white,
                      fontColor: Colors.white,
                      child: LoginScreen(),
                    )),
                     SizedBox(height: 20),

                     FadeAnimation(3.2,RaisedButton(
                       child: Text("Login with Google"),
                       onPressed: () {
                            AuthProvider().signInWithGoogle().whenComplete(() {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return App();
                                  },
                                ),
                              );
                            });
                          },
                     ),
                     ),
                    // FadeAnimation(3.4,Text("Forgot password", style: TextStyle(
                    //     color: Colors.white,
                    //     fontSize: 17,
                    //     decoration: TextDecoration.underline
                    // )))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// //import 'main.dart';
// import 'package:charusat_new1/main.dart';

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final GoogleSignIn googleSignIn = GoogleSignIn();
//   bool isLoading = false;

//   Future<Null> handleSignOut() async {
//     this.setState(() {
//       isLoading = true;
//     });

//     await FirebaseAuth.instance.signOut();
//     await googleSignIn.disconnect();
//     await googleSignIn.signOut();

//     this.setState(() {
//       isLoading = false;
//     });
//     Navigator.of(context).pushAndRemoveUntil(
//         MaterialPageRoute(builder: (context) => MyApp()),
//         (Route<dynamic> route) => false);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("HomePage"),
//           centerTitle: true,
//         ),
//         body: Center(
//           child: FlatButton(
//               onPressed: handleSignOut,
//               child: Text(
//                 'Sign Out',
//                 style: TextStyle(fontSize: 16.0),
//               ),
//               color: Color(0xffdd4b39),
//               textColor: Colors.white,
//               padding: const EdgeInsets.all(20.0),
//         ),
//       ),
//       )
//     );
//   }
// }

