import 'package:flutter/material.dart';
import 'package:charusat_new1/src/scoped-model/main_model.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:charusat_new1/src/screens/main_screen.dart';

class App extends StatelessWidget {
  final MainModel mainModel = MainModel();

  @override
  Widget build(BuildContext context) {
    return ScopedModel<MainModel>(
      model: mainModel,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Food Delivery App",
        theme: ThemeData(primaryColor: Colors.blueAccent),
        home: MainScreen(model: mainModel),
      ),
    );
  }
}