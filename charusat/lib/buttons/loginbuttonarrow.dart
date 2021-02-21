import 'package:charusat_new1/buttons/customButtonAnimation.dart';
import 'package:charusat_new1/pages/authentication/firebase_auth.dart';
//import 'package:charusat_new1/pages/home.dart';
import 'package:charusat_new1/pages/loginscreen.dart';
import 'package:charusat_new1/src/app.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class LoginButtonArrow extends StatefulWidget {

  final String label;
  final Color background;
  final Color borderColor;
  final Color fontColor;
  final Function onTap;
  final Widget child;

  const LoginButtonArrow({Key key, this.label, this.background, this.borderColor, this.fontColor, this.onTap, this.child}) : super(key: key);

  @override
  _LoginButtonArrowState createState() => _LoginButtonArrowState();
}

class _LoginButtonArrowState extends State<LoginButtonArrow>
    with TickerProviderStateMixin {

  AnimationController _positionController;
  Animation<double> _positionAnimation;

  AnimationController _scaleController;
  Animation<double> _scaleAnimation;

  // TextEditingController _emailController;
  // TextEditingController _passwordController;
  

  bool _isLogin = false;
  bool _isIconHide = false;
  //String textToSendBack = taskcontroller.text;


  // final _text = TextEditingController();
  // bool _validate = false;

  //   @override
  // void dispose() {
  //   _text.dispose();
  //   super.dispose();
  // }

  @override
  void initState() {
     super.initState();

    // _emailController = TextEditingController(text: "");
    // _passwordController = TextEditingController(text: "");

    _positionController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 800)
    );

    _positionAnimation = Tween<double>(begin: 10.0, end: 255.0)
        .animate(_positionController)..addStatusListener((status){
      if(status == AnimationStatus.completed){
        setState(() {
          _isIconHide = true;
        });
        _scaleController.forward();
      }
    });

    _scaleController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 900)
    );

    _scaleAnimation = Tween<double>(begin: 1.0, end: 32)
        .animate(_scaleController)..addStatusListener((status) async {
      if(status == AnimationStatus.completed){
        Navigator.pushReplacement(context, PageTransition(
            type: PageTransitionType.fade,
            child: widget.child
        ),
        );

                  
         Navigator.push(
       context, MaterialPageRoute(builder: (BuildContext context) => App()));
      }
      
    });

  }

@override
  Widget build(BuildContext context) {
    return InkWell(
      
      onTap: () async{
                  //     if((_emailController.text.isEmpty || _passwordController.text.isEmpty)) {
                  //   print("Email and password cannot be empty");
                  //   return;
                  // }
                  // else{
                  //                     bool res = await AuthProvider().signInWithEmail(_emailController.text, _passwordController.text).whenComplete((){
                  //                             //   Navigator.of(context).push(
                  //       //     MaterialPageRoute(
                  //       //       builder: (context) {
                  //       //         return HomePage();
                  //       //       },
                  //       //     ),
                  //       //   );
                  //       // });

                  // });
                  // }
        setState(() {
          _isLogin = true;
        });
        _positionController.forward();
      },
      
      child: Container(
        
        height: 63,
        width: double.infinity,
        decoration: BoxDecoration(
          color: widget.background,
          borderRadius: BorderRadius.circular(14),
        ),
        child: !_isLogin ? Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(widget.label, style: TextStyle(
                color: widget.fontColor,
                fontSize: 20,
                fontWeight: FontWeight.bold
            )),
            SizedBox(width: 10),
            Icon(Icons.arrow_forward, color: widget.fontColor,size: 32)
          ],
        ) : Stack(
          children: <Widget>[
            
            AnimatedBuilder(
              animation: _positionController,
              builder: (context, child) => Positioned(
                left: _positionAnimation.value,
                top: 5,
                child: AnimatedBuilder(
                  animation: _scaleController,
                  builder: (context,build) => Transform.scale(
                      scale: _scaleAnimation.value,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: widget.borderColor,
                          shape: BoxShape.circle,
                        ),
                        child: !_isIconHide ? Icon(Icons.arrow_forward, color: widget.fontColor,size: 32) : Container(),
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}