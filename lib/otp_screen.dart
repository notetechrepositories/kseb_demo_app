import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    listenOtp();
  }

  void listenOtp() async {
    await SmsAutoFill().unregisterListener();
    listenForCode();
    await SmsAutoFill().listenForCode;
    print("OTP listen Called");
  }

  @override
  void dispose() {
    SmsAutoFill().unregisterListener();
    print("unregisterListener");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Verify Screen"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "\n\n Otp sent to ${widget.phone}",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                    ),
                  ),
                ),
                Form(
                  child: Center(
                    child: PinFieldAutoFill(
                      currentCode: codeValue,
                      codeLength: 4,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        // LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      onCodeChanged: (code) {
                        print("onCodeChanged $code");
                        setState(() {
                          codeValue = code.toString();
                        });
                      },
                      onCodeSubmitted: (val) {
                        print("onCodeSubmitted $val");
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: ElevatedButton(
                      onPressed: () {
                        print(codeValue);
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => ScreenHome())));
                      },
                      child: const Text("Verify OTP")),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                    child: ElevatedButton(
                        onPressed: listenOtp, child: const Text("Resend")))
              ],
            ),
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
                      // inputFormatters: [
                      //   LengthLimitingTextInputFormatter(1),
                      //   FilteringTextInputFormatter.digitsOnly
                      // ],
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