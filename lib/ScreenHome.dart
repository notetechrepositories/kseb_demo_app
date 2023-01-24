import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Image.asset(
          "assets/images/ttlogo.png",
          height: 50,
        ),
        // centerTitle: true,
        actions: <Widget>[
          Image.asset(
            "assets/images/climateZones.png",
          )
        ],

        // title: Text(
        //   "Transformer Tracker",
        //   style: GoogleFonts.lato(color: Colors.black),
        // ),
        //    Column(
        //     mainAxisAlignment: MainAxisAlignment.center,

        //     children: <Widget>[
        //   CircleAvatar(
        //     radius: 50,
        //     backgroundImage: NetworkImage("https://www.shutterstock.com/image-illustration/planet-earth-map-elements-this-600w-1174503121.jpg"),

        //   )
        // ],

        //   ),
      ),
      body: SafeArea(
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 66, 41, 41),
            ),
            child: ListView(
              children: ListTile.divideTiles(
                  //          <-- ListTile.divideTiles
                  context: context,
                  tiles: [
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 15, right: 15),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 88, 88, 88),
                              // offset: const Offset(
                              //   5.0,
                              //   5.0,
                              // ),
                              blurRadius: 20.0,
                              // spreadRadius: 2.0,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.black,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                          color: Color.fromARGB(255, 3, 42, 75),
                          borderRadius: BorderRadius.circular(20)),
                      child: ListTile(
                        // leading: Text(""),
                        title: Text(
                          '\n    Hello, John Smith ',
                          style: GoogleFonts.roboto(
                              color: Colors.white, fontSize: 20.0),
                        ),
                        subtitle: Text(
                            "     Assistant Engineer\n     Section Office\n\n ",
                            style: GoogleFonts.roboto(
                                color: Colors.white, fontSize: 15.0)),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 15, right: 15),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 88, 88, 88),
                              // offset: const Offset(
                              //   5.0,
                              //   5.0,
                              // ),
                              blurRadius: 10.0,
                              // spreadRadius: 2.0,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                          color: Color.fromARGB(255, 255, 252, 252),
                          borderRadius: BorderRadius.circular(300)),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/images/transformer.png",
                          ),
                          // backgroundColor: Color.fromARGB(255, 71, 21, 3),
                        ),
                        title: Text('3',
                            style: GoogleFonts.bebasNeue(fontSize: 20.0)),
                        subtitle: Text("Transformer",
                            style: GoogleFonts.roboto(fontSize: 20.0)),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 15, right: 15),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 88, 88, 88),
                              // offset: const Offset(
                              //   5.0,
                              //   5.0,
                              // ),
                              blurRadius: 10.0,
                              // spreadRadius: 2.0,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                          color: Color.fromARGB(255, 255, 252, 252),
                          borderRadius: BorderRadius.circular(300)),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/inspection.png"),
                          backgroundColor: Colors.orange,
                        ),
                        title: Text('0',
                            style: GoogleFonts.bebasNeue(fontSize: 20.0)),
                        subtitle: Text("Inspection",
                            style: GoogleFonts.roboto(fontSize: 20.0)),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 15, right: 15),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 88, 88, 88),
                              // offset: const Offset(
                              //   5.0,
                              //   5.0,
                              // ),
                              blurRadius: 10.0,
                              // spreadRadius: 2.0,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                          color: Color.fromARGB(255, 255, 252, 252),
                          borderRadius: BorderRadius.circular(300)),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/ruler.png"),
                          backgroundColor: Colors.green,
                        ),
                        title: Text('0',
                            style: GoogleFonts.bebasNeue(fontSize: 20.0)),
                        subtitle: Text("Measurements",
                            style: GoogleFonts.roboto(fontSize: 20.0)),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 15, right: 15),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 88, 88, 88),
                              // offset: const Offset(
                              //   5.0,
                              //   5.0,
                              // ),
                              blurRadius: 10.0,
                              // spreadRadius: 2.0,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                          color: Color.fromARGB(255, 255, 252, 252),
                          borderRadius: BorderRadius.circular(300)),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/maintenance.png"),
                        ),
                        title: Text('1',
                            style: GoogleFonts.bebasNeue(fontSize: 20.0)),
                        subtitle: Text("Maintenance",
                            style: GoogleFonts.roboto(fontSize: 20.0)),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 15, right: 15),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 88, 88, 88),
                              // offset: const Offset(
                              //   5.0,
                              //   5.0,
                              // ),
                              blurRadius: 10.0,
                              // spreadRadius: 2.0,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                          color: Color.fromARGB(255, 255, 252, 252),
                          borderRadius: BorderRadius.circular(300)),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/file.png"),
                          backgroundColor: Colors.red,
                        ),
                        title: Text('0',
                            style: GoogleFonts.bebasNeue(fontSize: 20.0)),
                        subtitle: Text("Approval Request",
                            style: GoogleFonts.roboto(fontSize: 20.0)),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ]).toList(),
            )),
      ),
      // Container(),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              // backgroundColor: Colors.green
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_business),
              label: 'Office',
              // backgroundColor: Colors.yellow
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          }),
      drawer: Drawer(
        // backgroundColor: Colors.black,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 170, 168, 173),
              ),
              child: Text(
                'e-track',
                style: GoogleFonts.lato(fontSize: 50),
                // TextStyle(fontSize: 50),
              ),
            ),
            ListTile(
              title: Text('Item 1', style: GoogleFonts.lato(fontSize: 20)),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text(
                'Item 2',
                style: GoogleFonts.lato(fontSize: 20),
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
    );
  }
}
