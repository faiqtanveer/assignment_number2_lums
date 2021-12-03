import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final color = Colors.black;
    return Scaffold(
      body: Column(
        children: [
          //avator icon
          Padding(
            padding: const EdgeInsets.only(top: 150.0, bottom: 8.0),
            child: Center(
              child: CircleAvatar(
                radius: 72.0,
                backgroundColor: Colors.transparent,
                backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
                ),
              ),
            ),
          ),
          // simple text
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Login",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700, // light
              ),
            ),
          ),
          // first textfield
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextField(
              style: TextStyle(color: color),
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                hintText: 'enter your email',
                hintStyle: TextStyle(color: color),
                prefixIcon: Icon(Icons.email, color: color),
                filled: false,
                fillColor: Colors.black,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: color.withOpacity(0.5)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Colors.orange),
                ),
              ),
            ),
          ),
          // second textfield
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextField(
              style: TextStyle(color: color),
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                hintText: 'enter your password',
                hintStyle: TextStyle(color: color),
                prefixIcon: Icon(Icons.lock, color: color),
                suffixIcon: Icon(
                  Icons.lock,
                  color: color,
                ),
                filled: true,
                fillColor: Colors.white60,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: color.withOpacity(0.5)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Colors.orange),
                ),
              ),
            ),
          ),
          // text and a button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Text(
                  "Forget Password ?",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: FlatButton(
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 15.0),
                  ),
                  color: Colors.orange,
                  textColor: Colors.white,
                  onPressed: () {},
                ),
              ),
            ],
          ),
          // simple text and bold text
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: 8.0, bottom: 18.0, left: 28),
                child: Text(
                  "Don't have an account?",
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                  bottom: 18.0,
                ),
                child: Text(
                  "Register",
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
