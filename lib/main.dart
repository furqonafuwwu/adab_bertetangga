import 'package:flutter/material.dart';

import 'adab.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.white,
          canvasColor: Colors.white,
          appBarTheme: AppBarTheme(
              elevation: 0, color: Colors.white
          )//AppBarTheme
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new RaisedButton(
          child: const Text('Mulai') ,
          color: Theme
              .of(context)
              .accentColor ,
          elevation: 4.0 ,
          splashColor: Colors.blue ,
          textColor: const Color(0xFFFFFFFF) ,
          onPressed: () {
            openNewSreen(context, adab());
          }) ,
    );
  }

  void openNewSreen(BuildContext context , Widget screen) {
    Navigator.push(context , MaterialPageRoute(builder: (context) => screen));
  }



