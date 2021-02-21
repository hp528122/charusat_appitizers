import 'package:charusat_new1/pages/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:charusat_new1/pages/authentication/firebase_auth.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Payment page"),
            RaisedButton(
              child: Text("Log out"),
              onPressed: (){
                AuthProvider().logOut().whenComplete((){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
                    return LoginScreen();
                  },
                  ),
                  );
                });              
              },
            )
          ],
        ),
      ),
    );
  }
}