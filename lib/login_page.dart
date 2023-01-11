import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:ksec_login/otp_screen.dart';

import 'ScreenHome.dart';
import 'register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Form(
          key: formKey,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              Icons.phone_android,
              size: 100,
            ),
            //hello textfield

            const SizedBox(
              height: 75,
            ),

            Text(
              "Hello Again!",
              style: GoogleFonts.bebasNeue(
                fontSize: 52,
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
              height: 50,
            ),

            //email textfield

            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
            //   child: TextField(
            //     decoration: InputDecoration(
            //       enabledBorder: OutlineInputBorder(
            //           borderSide: BorderSide(color: Colors.white),
            //           borderRadius: BorderRadius.circular(12)),
            //       focusedBorder: OutlineInputBorder(
            //         borderSide: BorderSide(color: Colors.deepPurple),
            //         borderRadius: BorderRadius.circular(12),
            //       ),
            //       hintText: 'Email',
            //       fillColor: Colors.grey[200],
            //       filled: true,
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 10,
            ),

            //phonenumber tetxfield
            FadeInDown(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xffeeeeee),
                        blurRadius: 10,
                        offset: Offset(0, 4))
                  ],
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.black.withOpacity(
                      0,
                    ),
                  ),
                ),
                child: Stack(
                  children: [
                    InternationalPhoneNumberInput(
                      onInputChanged: (value) {},
                      cursorColor: Colors.black,
                      formatInput: false,
                      selectorConfig: SelectorConfig(
                          selectorType: PhoneInputSelectorType.BOTTOM_SHEET),
                      inputDecoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 15, left: 0),
                        border: InputBorder.none,
                        hintText: "phone number",
                        hintStyle: TextStyle(
                            color: Colors.grey.shade500, fontSize: 16),
                      ),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$')
                                .hasMatch(value)) {
                          return "Enter correct number";
                        } else {
                          return null;
                        }
                      },
                    ),
                    Positioned(
                        left: 90,
                        top: 8,
                        bottom: 8,
                        child: Container(
                          height: 40,
                          width: 1,
                          color: Colors.black.withOpacity(0.13),
                        ))
                  ],
                ),
              ),
            ),
            FadeInDown(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xffeeeeee),
                        blurRadius: 10,
                        offset: Offset(0, 4))
                  ],
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.black.withOpacity(
                      0,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextFormField(
                    decoration:
                        const InputDecoration(labelText: "Enter Your Email"),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value)) {
                        return "Enter correct Email";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
              ),
            ),
            //name
            SizedBox(
              height: 10,
            ),
            //password textfield

            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
            //   child: TextField(
            //     decoration: InputDecoration(
            //       enabledBorder: OutlineInputBorder(
            //           borderSide: BorderSide(color: Colors.white),
            //           borderRadius: BorderRadius.circular(12)),
            //       focusedBorder: OutlineInputBorder(
            //         borderSide: BorderSide(color: Colors.deepPurple),
            //         borderRadius: BorderRadius.circular(12),
            //       ),
            //       hintText: 'Password',
            //       fillColor: Colors.grey[200],
            //       filled: true,
            //     ),
            //     obscureText: true,
            //   ),
            // ),
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
                    child:
                        // Text(
                        //   'Sign In',
                        //   style: TextStyle(
                        //     color: Colors.white,
                        //     fontWeight: FontWeight.bold,
                        //     fontSize: 18,
                        //   ),
                        // ),
                        TextButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                final snackBar = SnackBar(
                                  content: Text(
                                    'Submitting form',
                                    style: TextStyle(
                                      color: Colors.green,
                                    ),
                                  ),
                                );
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => otpScreen(),
                                  ),
                                );
                                // _scaffoldKey.currentState!.(snackBar);
                              }

                              //old
                            },
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ))),
              ),
            ),

            SizedBox(
              height: 25,
            ),

            //register button( not a member? register now)

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Not a Member?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            // const Text(
            //   "Register now",
            //   style: TextStyle(
            //     color: Colors.blue,
            //     fontWeight: FontWeight.bold,

            //   ),

            // )
            // TextButton(
            //   onPressed: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: ((context) => RegisterScreen())));
            //   },
            //   child: Text("Register Now"),
            // ),
          ]),
        ),

        // )

// registration page
        // TextButton(
        //   onPressed: () {
        //     Navigator.push(context,
        //         MaterialPageRoute(builder: ((context) => RegisterScreen())));
        //   },
        //   child: Text("Register Now"),
        // ),
        // ]),
      ),
    );
  }
}
