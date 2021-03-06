import 'package:charusat_new1/pages/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:charusat_new1/buttons/loginbuttonarrow.dart';
import 'package:charusat_new1/buttons/customTextfield.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController _emailController;
  TextEditingController _passwordController;

  // final _text = TextEditingController();
  // bool _validate = false;

  @override
  void initState() { 
    super.initState();
    _emailController = TextEditingController(text: "");
    _passwordController = TextEditingController(text: "");
  }
  //   @override
  // void dispose() {
  //   _text.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/images/p1.jpg"),
                    fit: BoxFit.contain,
                    alignment: Alignment.topCenter
                )
            ),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  SizedBox(height: 20),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.arrow_back, color: Colors.white,size:32),
                            onPressed: (){
                              Navigator.pushReplacement(context,MaterialPageRoute(builder: (BuildContext context) => HomeScreen()));
                            },
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text("Charusat", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18
                              )),
                              Text("Foodies", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12
                              ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 40,vertical: 50),
                    height: MediaQuery.of(context).size.height * 0.70,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25)
                        )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Welcome",style: TextStyle(
                            color: Color(0xFFF032f42),
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                        )),
                        Text("SignIn to continue",style: TextStyle(
                            color: Colors.grey,
                            fontSize: 25
                        )),
                        SizedBox(height: 40),
                        CustomTextField(
                          controller: _emailController,
                          label: "Email",
                          // errorText: _validate ? 'Value Can\'t Be Empty' : null,
                        ),
                        SizedBox(height: 10),
                        CustomTextField(
                          controller: _passwordController,
                          label: "Password",
                          isPassword: true,
                          icon: Icon(Icons.https, size: 27,color: Color(0xFFF032f41),),
                          // errorText: _validate ? 'Value Can\'t Be Empty' : null,
                        ),
                        SizedBox(height: 40),
                        LoginButtonArrow(
                          label: "Login",
                          fontColor: Colors.white,
                          background: Color(0xFFF1f94aa),
                          borderColor: Color(0xFFF1a7a8c),
                          
                        )
                        
                      ],
                    ),
                  )

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}