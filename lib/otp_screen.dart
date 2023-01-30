import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';

import 'ScreenHome.dart';

// class VerifyOTPScreen extends StatefulWidget {
//   const VerifyOTPScreen({Key? key}) : super(key: key);
class VerifyOTPScreen extends StatefulWidget {
  final String phone;
  const VerifyOTPScreen(this.phone, {super.key});
  @override
  State<VerifyOTPScreen> createState() => _VerifyOTPScreenState();
}

class _VerifyOTPScreenState extends State<VerifyOTPScreen> with CodeAutoFill {
  String codeValue = "";

  @override
  void codeUpdated() {
    print("Update code $code");
    setState(() {
      print("codeUpdated");
    });
  }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   listenOtp();
  // }

  // void listenOtp() async {
  //   await SmsAutoFill().unregisterListener();
  //   listenForCode();
  //   await SmsAutoFill().listenForCode;
  //   print("OTP listen Called");
  // }

  @override
  void dispose() {
    SmsAutoFill().unregisterListener();
    print("unregisterListener");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xfff7f6fb),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    Icons.arrow_back,
                    size: 32,
                    color: Colors.black54,
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade50,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/9dcf525c-0f01-4f62-bb75-02381a22a4b2.jpg',
                ),
              ),
              SizedBox(
                height: 24,
              ),
              const Text(
                'Verification',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Enter your OTP code number",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 28,
              ),
              Container(
                padding: EdgeInsets.all(28),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _textFieldOTP(first: true, last: false),
                        _textFieldOTP(first: false, last: false),
                        _textFieldOTP(first: false, last: false),
                        _textFieldOTP(first: false, last: true),
                      ],
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ScreenHome()));
                        },
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.purple),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(14.0),
                          child: Text(
                            'Verify',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                "Didn't you receive any code?",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                "Resend New Code",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _textFieldOTP({required bool first, last}) {
    return Container(
      height: 85,
      child: AspectRatio(
        aspectRatio: 0.70,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.black12),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.purple),
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }
}

















// // import 'dart:html';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:sms_autofill/sms_autofill.dart';

// import 'ScreenHome.dart';

// class otpScreen extends StatefulWidget {
//   final String phone;

//   const otpScreen({super.key, required this.phone});
//   const otpScreen(this.phone, {super.key});

//   @override
//   State<otpScreen> createState() => _otpScreenState();
// }

// class _otpScreenState extends State<otpScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
      // appBar: AppBar(
        // title: Text("Verify Screen"),
        // backgroundColor: Colors.blue,
      // ),
      // body: Padding(
      //   padding: const EdgeInsets.all(70.20),
      //   child: Column(
      //     children: [
      //       Container(
              // alignment: Alignment.center,
              // child: Padding(
              //   padding: const EdgeInsets.all(10.0),
              //   child: Text(
              //     "\n\n Otp sent to ${widget.phone}",
              //     style: TextStyle(color: Colors.black, fontSize: 30),
              //   ),
              // ),
      //       ),
//             SizedBox(
//               height: 40,
//             ),

        
//             // Form(
//             //     child: Row(
//             //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             //   children: [
//             //     Padding(
//             //       padding: const EdgeInsets.all(8.0),
//             //       child: SizedBox(
//             //         width: 45,
//             //         height: 45,
//             //         child: TextFormField(
//             //           textAlign: TextAlign.center,
//             //           keyboardType: TextInputType.number,
//             //           inputFormatters: [
//             //             LengthLimitingTextInputFormatter(1),
//             //             FilteringTextInputFormatter.digitsOnly
//             //           ],
//             //           style: TextStyle(color: Colors.black, fontSize: 30),
//             //           decoration:
//             //               InputDecoration(filled: true, fillColor: Colors.grey),
//             //         ),
//             //       ),
//             //     ),
//             //     Padding(
//             //       padding: const EdgeInsets.all(8.0),
//             //       child: SizedBox(
//             //         width: 45,
//             //         height: 45,
//             //         child: TextFormField(
//             //           textAlign: TextAlign.center,
//             //           keyboardType: TextInputType.number,
//             //           inputFormatters: [
//             //             LengthLimitingTextInputFormatter(1),
//             //             FilteringTextInputFormatter.digitsOnly
//             //           ],
//             //           style: TextStyle(color: Colors.black, fontSize: 30),
//             //           decoration:
//             //               InputDecoration(filled: true, fillColor: Colors.grey),
//             //         ),
//             //       ),
//             //     ),
//             //     SizedBox(
//             //       width: 45,
//             //       height: 45,
//             //       child: TextFormField(
//             //         textAlign: TextAlign.center,
//             //         keyboardType: TextInputType.number,
//             //         inputFormatters: [
//             //           LengthLimitingTextInputFormatter(1),
//             //           FilteringTextInputFormatter.digitsOnly
//             //         ],
//             //         style: TextStyle(color: Colors.black, fontSize: 30),
//             //         decoration:
//             //             InputDecoration(filled: true, fillColor: Colors.grey),
//             //       ),
//             //     ),
//             //     Padding(
//             //       padding: const EdgeInsets.all(8.0),
//             //       child: SizedBox(
//             //         width: 45,
//             //         height: 45,
//             //         child: TextFormField(
//             //           textAlign: TextAlign.center,
//             //           keyboardType: TextInputType.number,
//             //           inputFormatters: [
//             //             LengthLimitingTextInputFormatter(1),
//             //             FilteringTextInputFormatter.digitsOnly
//             //           ],
//             //           style: TextStyle(color: Colors.black, fontSize: 30),
//             //           decoration:
//             //               InputDecoration(filled: true, fillColor: Colors.grey),
//             //         ),
//             //       ),
//             //     )
//             //   ],
//             // )),
//             Container(
//               alignment: Alignment.center,
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   children: [
//                     Text(
//                       "Didn't Receive Otp",
//                       style: TextStyle(color: Colors.black, fontSize: 20),
//                     ),
//                     TextButton(
//                         onPressed: () {
//                           CircularProgressIndicator(
//                             valueColor:
//                                 AlwaysStoppedAnimation<Color>(Colors.blue),
//                           );
//                         },
//                         child: Text("Resend Otp"))
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomSheet: Padding(
//           padding: const EdgeInsets.all(8),
//           child: ElevatedButton(
//             onPressed: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: ((context) => ScreenHome())));
//             },
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "verify and create",
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ],
//             ),
//             style: ElevatedButton.styleFrom(
//                 elevation: 4, padding: EdgeInsets.all(20)),
//           )),
//     );
//   }
// }