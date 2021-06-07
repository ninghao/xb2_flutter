import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Image.asset(
          'assets/images/logo.png',
          width: 96,
          color: Colors.white,
        ),
        // color: Colors.deepPurpleAccent,
        padding: EdgeInsets.all(60),
        alignment: Alignment.topCenter,
        width: 350,
        height: 350,
        // transform: Matrix4.rotationZ(0.5),
        // transformAlignment: Alignment.topRight,
        decoration: BoxDecoration(
          color: Colors.deepPurpleAccent,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.yellow,
              Colors.pink,
              Colors.blue,
              Colors.cyan,
            ],
          ),
          image: DecorationImage(
            image: NetworkImage(
              'https://resources.ninghao.net/images/IMG_2626.JPG',
            ),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.deepOrange,
              BlendMode.softLight,
            ),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
          border: Border.all(
            color: Colors.deepOrangeAccent,
            width: 5,
            style: BorderStyle.solid,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.deepOrangeAccent,
              offset: Offset(5, 20),
              blurRadius: 30,
            ),
          ],
        ),
      ),
    );
  }
}
