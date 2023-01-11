import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'ScreenHome.dart';

class otpScreen extends StatefulWidget {
  const otpScreen({super.key});

  @override
  State<otpScreen> createState() => _otpScreenState();
}

class _otpScreenState extends State<otpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Verify Screen"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.6),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Otp sent to 9072405777",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Form(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 64,
                  height: 68,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    inputFormatters: [LengthLimitingTextInputFormatter(1)],
                    style: TextStyle(color: Colors.black, fontSize: 30),
                    decoration:
                        InputDecoration(filled: true, fillColor: Colors.grey),
                  ),
                ),
                SizedBox(
                  width: 64,
                  height: 68,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    inputFormatters: [LengthLimitingTextInputFormatter(1)],
                    style: TextStyle(color: Colors.black, fontSize: 30),
                    decoration:
                        InputDecoration(filled: true, fillColor: Colors.grey),
                  ),
                ),
                SizedBox(
                  width: 64,
                  height: 68,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    inputFormatters: [LengthLimitingTextInputFormatter(1)],
                    style: TextStyle(color: Colors.black, fontSize: 30),
                    decoration:
                        InputDecoration(filled: true, fillColor: Colors.grey),
                  ),
                ),
                SizedBox(
                  width: 64,
                  height: 68,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    inputFormatters: [LengthLimitingTextInputFormatter(1)],
                    style: TextStyle(color: Colors.black, fontSize: 30),
                    decoration:
                        InputDecoration(filled: true, fillColor: Colors.grey),
                  ),
                )
              ],
            )),
            Container(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      "Didnt Receive Otp",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    TextButton(
                        onPressed: () {
                          // CircularProgressIndicator(
                          //   valueColor:
                          //       AlwaysStoppedAnimation<Color>(Colors.blue),
                          // );
                        },
                        child: Text("Resend Otp"))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Padding(
          padding: const EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => ScreenHome())));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "verify and create",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            style: ElevatedButton.styleFrom(
                elevation: 4, padding: EdgeInsets.all(20)),
          )),
    );
  }
}
