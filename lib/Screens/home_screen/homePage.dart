import 'package:calculate/Screens/about.dart';
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
      appBar: AppBar(
        iconTheme: IconThemeData(color: kPrimaryColor),
        backgroundColor: kSecondaryColor,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60.0),
          child: Text(
            "HomePage",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: kSecondaryColor,
          child: ListView(
            children: [
              const DrawerHeader(
                child: Center(
                  child: Text(
                    "L O G O",
                    style: TextStyle(color: kPrimaryColor, fontSize: 35),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.home,
                  color: kPrimaryColor,
                  size: 29,
                ),
                title: const Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 20,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.calculate,
                  color: kPrimaryColor,
                  size: 29,
                ),
                title: const Text(
                  "Calculator App",
                  style: TextStyle(
                    fontSize: 20,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.person,
                  color: kPrimaryColor,
                  size: 29,
                ),
                title: const Text(
                  "About ME",
                  style: TextStyle(
                    fontSize: 20,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AboutMe(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/quiz-logo.png',
              color: kSecondaryColor,
              width: 300,
            ),
            const SizedBox(
              height: 65,
            ),
            Text(
              "Learn Flutter the fun Way",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade800,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // TextButton.icon(
            //   onPressed: () {},
            //   icon: Icon(Icons.arrow_forward),
            //   label: Text("Let's get started"),
            // ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // Set the background color of the button
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(10), // Set the button border radius
                ),
              ),
              child: Text(
                'Get Started',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ],
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
                      builder: (context) => HomePage(),
                    ),
                  );
                } else if (_activepos == 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AboutMe(),
                    ),
                  );
                }
              });
            },
          ),
        ),
      ),
    );
  }
}
