import 'package:calculate/Screens/home_screen/homescreen.dart';
import 'package:calculate/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  int _activepos = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HomePage"),),
      drawer: Drawer(),
      body: const Center(
        child: Text(
          "Hello world!!",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 20.0,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(28.0),
          child: GNav(
            backgroundColor: kSecondaryColor,
            color: kPrimaryColor,
            activeColor: kPrimaryColor,
            tabBackgroundColor: Colors.grey.shade800,
            gap: 8,
            padding: EdgeInsets.all(16.0),
            tabs: const [
              GButton(
                icon: Icons.home,
                iconSize: 30,
                text: 'Home',
              ),
              GButton(
                icon: Icons.calculate,
                iconSize: 30,
                text: "Calculator",
              ),
              GButton(
                icon: Icons.person,
                iconSize: 30,
                text: "Person",
              ),
            ],
            selectedIndex: _activepos,
            onTabChange: (index) {
              setState(() {
                _activepos = index; // Update _activepos with the selected index
                if (_activepos == 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                } else if (_activepos == 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                } else {
                  print("hello ....");
                }
              });
            },
          ),
        ),
      ),
    );
  }
}
