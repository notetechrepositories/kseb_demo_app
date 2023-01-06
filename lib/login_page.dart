import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(children: [
          //hello textfield

          const SizedBox(
            height: 20,
          ),

          const Text(
            "Hello Again!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 10,
          ),

          const Text(
            "Welcome Back , You\'ve been missed!",
            style: TextStyle(
              fontSize: 20,
            ),
          ),

          SizedBox(
            height: 30,
          ),

          //email textfield

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: const TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Email'),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),

          //phonenumber tetxfield

          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
          //   child: Container(
          //     decoration: BoxDecoration(
          //       color: Colors.grey[200],
          //       border: Border.all(
          //         color: Colors.white,
          //       ),
          //       borderRadius: BorderRadius.circular(12),
          //     ),
          //     child: Padding(
          //       padding: const EdgeInsets.only(left: 20.0),
          //       child: const TextField(
          //         decoration: InputDecoration(
          //             border: InputBorder.none, hintText: 'Phone'),
          //       ),
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          //password textfield

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Password'),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),

          //sign in button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(25)),
              child: Center(
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),

          SizedBox(
            height: 10,
          ),

          //register button( not a member? register now)

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Not a member?",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Text(
            "Register now",
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          )
        ]),
      ),
    );
  }
}
