// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_animator/flutter_animator.dart';
// import 'package:intl_phone_number_input/intl_phone_number_input.dart';

// import 'login_page.dart';
// import 'otp_screen.dart';

// class RegisterScreen extends StatefulWidget {
//   const RegisterScreen({super.key});

//   @override
//   State<RegisterScreen> createState() => _RegisterScreenState();
// }

// class _RegisterScreenState extends State<RegisterScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Container(
//             padding: EdgeInsets.all(30),
//             width: double.infinity,
//             child: Column(
//               children: [
//                 Image.network(
//                   "https://play-lh.googleusercontent.com/e9ZxHG4zvXjJAxXEXsgPQdc2XRf7mIrZmdVdHoEzFfq-NAphV1AWwimvoOKWSBNBXA",
//                   width: MediaQuery.of(context).size.height * 0.3,
//                   height: MediaQuery.of(context).size.height * 0.3,
//                 ),
//                 SizedBox(
//                   height: 60,
//                 ),
//                 FadeInDown(
//                   child: Text(
//                     "REGISTER",
//                     style: TextStyle(
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 FadeInDown(
//                   child: Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                     child: Text(
//                       "Enter your phone number to continue,we will send you otp to verify",
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         color: Colors.grey.shade700,
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 30,
//                 ),
//                 FadeInDown(
//                   child: Container(
//                     padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       boxShadow: [
//                         BoxShadow(
//                             color: Color(0xffeeeeee),
//                             blurRadius: 10,
//                             offset: Offset(0, 4))
//                       ],
//                       borderRadius: BorderRadius.circular(8),
//                       border: Border.all(
//                         color: Colors.black.withOpacity(
//                           0,
//                         ),
//                       ),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                       child: TextField(
//                         decoration: InputDecoration(
//                           enabledBorder: OutlineInputBorder(
//                               borderSide: BorderSide(color: Colors.white),
//                               borderRadius: BorderRadius.circular(12)),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.deepPurple),
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           hintText: 'Email',
//                           fillColor: Colors.grey[200],
//                           filled: true,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
// //name
//                 // FadeInDown(
//                 //   child: Container(
//                 //     padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
//                 //     decoration: BoxDecoration(
//                 //       color: Colors.white,
//                 //       boxShadow: [
//                 //         BoxShadow(
//                 //             color: Color(0xffeeeeee),
//                 //             blurRadius: 10,
//                 //             offset: Offset(0, 4))
//                 //       ],
//                 //       borderRadius: BorderRadius.circular(8),
//                 //       border: Border.all(
//                 //         color: Colors.black.withOpacity(
//                 //           0,
//                 //         ),
//                 //       ),
//                 //     ),
//                 //     child: Padding(
//                 //       padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                 //       child: TextField(
//                 //         decoration: InputDecoration(
//                 //           enabledBorder: OutlineInputBorder(
//                 //               borderSide: BorderSide(color: Colors.white),
//                 //               borderRadius: BorderRadius.circular(12)),
//                 //           focusedBorder: OutlineInputBorder(
//                 //             borderSide: BorderSide(color: Colors.deepPurple),
//                 //             borderRadius: BorderRadius.circular(12),
//                 //           ),
//                 //           hintText: 'Name',
//                 //           fillColor: Colors.grey[200],
//                 //           filled: true,
//                 //         ),
//                 //       ),
//                 //     ),
//                 //   ),
//                 // ),

//                 //phn
//                 FadeInDown(
//                   child: Container(
//                     padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       boxShadow: [
//                         BoxShadow(
//                             color: Color(0xffeeeeee),
//                             blurRadius: 10,
//                             offset: Offset(0, 4))
//                       ],
//                       borderRadius: BorderRadius.circular(8),
//                       border: Border.all(
//                         color: Colors.black.withOpacity(
//                           0,
//                         ),
//                       ),
//                     ),
//                     child: Stack(
//                       children: [
//                         InternationalPhoneNumberInput(
//                           onInputChanged: (value) {},
//                           cursorColor: Colors.black,
//                           formatInput: false,
//                           selectorConfig: SelectorConfig(
//                               selectorType:
//                                   PhoneInputSelectorType.BOTTOM_SHEET),
//                           inputDecoration: InputDecoration(
//                             contentPadding:
//                                 EdgeInsets.only(bottom: 15, left: 0),
//                             border: InputBorder.none,
//                             hintText: "phone number",
//                             hintStyle: TextStyle(
//                                 color: Colors.grey.shade500, fontSize: 16),
//                           ),
//                         ),
//                         Positioned(
//                           left: 90,
//                           top: 8,
//                           bottom: 8,
//                           child: Container(
//                             height: 40,
//                             width: 1,
//                             color: Colors.black.withOpacity(0.13),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 90,
//                 ),
//                 FadeInDown(
//                   child: MaterialButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => otpScreen(),
//                         ),
//                       );
//                     },
//                     color: Colors.black,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(
//                         5,
//                       ),
//                     ),
//                     padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
//                     minWidth: double.infinity,
//                     child: Text(
//                       "Request OTP",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 FadeInDown(
//                   child: Row(
//                     children: [
//                       Text(
//                         "Already a user?",
//                         style: TextStyle(
//                           color: Colors.grey.shade700,
//                         ),
//                       ),
//                       TextButton(
//                           onPressed: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => LoginPage(),
//                               ),
//                             );
//                           },
//                           child: Text("Login"))
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
