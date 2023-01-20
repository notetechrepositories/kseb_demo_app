import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  TextEditingController _controller = TextEditingController();

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
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
                "Welcome Back , You've been missed!",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),

              SizedBox(
                height: 50,
              ),

              SizedBox(
                height: 10,
              ),

              //phonenumber tetxfield
              // FadeInDown (
              // child: Container(
              // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              // decoration: BoxDecoration(
              //   color: Colors.white,
              //   boxShadow: [
              //     BoxShadow(
              //         color: Color(0xffeeeeee),
              //         blurRadius: 10,
              //         offset: Offset(0, 4))
              //   ],
              //   borderRadius: BorderRadius.circular(8),
              //   border: Border.all(
              //     color: Colors.black.withOpacity(
              //       0,
              //     ),
              //   ),
              // ),
              // child: Column(
              // children: [
              //   TextFormField(
              //     decoration: InputDecoration(
              //       hintText: 'Phone Number',
              //       prefix: Padding(
              //         padding: EdgeInsets.all(4),
              //         child: Text('+91'),
              //       ),
              //     ),
              //     maxLength: 10,
              //     keyboardType: TextInputType.number,
              //     controller: _controller,
              //     validator: (value) {
              //       if (value!.isEmpty ||
              //           !RegExp(r'^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$')
              //               .hasMatch(value)) {
              //         return "Enter Valid Number";
              //       } else {
              //         return null;
              //       }
              //     },
              //   ),
              // ],
              // )
              //       Stack(
              //         children: [
              //           InternationalPhoneNumberInput(
              //             onInputChanged: (value) {},
              //             cursorColor: Colors.black,
              //             formatInput: false,
              //             selectorConfig: SelectorConfig(
              //                 selectorType:
              //                     PhoneInputSelectorType.BOTTOM_SHEET),
              //             inputDecoration: InputDecoration(
              //               contentPadding:
              //                   EdgeInsets.only(bottom: 15, left: 0),
              //               border: InputBorder.none,
              //               hintText: "phone number",
              //               hintStyle: TextStyle(
              //                   color: Colors.grey.shade500, fontSize: 16),
              //             ),

              // ),
              //           Positioned(
              //             left: 90,
              //             top: 8,
              //             bottom: 8,
              //             child: Container(
              //               height: 40,
              //               width: 1,
              //               color: Colors.black.withOpacity(0.13),
              //             ),
              //           )
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
              // ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black,
                        blurRadius: 7,
                        offset: Offset(0, 2)),
                  ],
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Colors.black.withOpacity(
                      0,
                    ),
                  ),
                ),
                child: FadeInDown(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Phone Number',
                          prefix: Padding(
                            padding: EdgeInsets.all(4),
                            child: Text('+91'),
                          ),
                        ),
                        maxLength: 10,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        controller: _controller,
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$')
                                  .hasMatch(value)) {
                            return "Enter Valid Number";
                          } else {
                            return null;
                          }
                        },
                      ),
                      Container(
                        // padding:
                        //     EdgeInsets.symmetric(horizontal: 15, vertical: 105),
                        // decoration: BoxDecoration(
                        //   color: Colors.white,
                        //   boxShadow: [
                        //     BoxShadow(
                        //         color: Colors.black,
                        //         blurRadius: 10,
                        //         offset: Offset(0, 4))
                        //   ],
                        //   borderRadius: BorderRadius.circular(8),
                        //   border: Border.all(
                        //     color: Colors.black.withOpacity(
                        //       0,
                        //     ),
                        //   ),
                        // ),

                        //sign in button
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(25)),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextButton(
                                  onPressed: () {
                                    if (formKey.currentState!.validate()) {
                                      final snackBar = SnackBar(
                                        content: Text(
                                          'Sending OTP to the corresponding mail',
                                          style: TextStyle(
                                            color: Colors.green,
                                          ),
                                        ),
                                      );

                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(snackBar);
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              otpScreen(_controller.text),
                                        ),
                                      );
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
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //name
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),

        // )
      ),
    );
  }
}
