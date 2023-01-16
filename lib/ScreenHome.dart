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
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Image.asset(
          "assets/images/ttlogo.png",
          height: 50,
        ),
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
      body: Container(),
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
