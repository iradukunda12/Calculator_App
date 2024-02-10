import 'package:calculate/Screens/home_screen/homePage.dart';
import 'package:calculate/Screens/home_screen/homescreen.dart';
import 'package:calculate/utils/constants.dart';
import 'package:flutter/material.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: kPrimaryColor),
        backgroundColor: kSecondaryColor,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60.0),
          child: Text(
            "About ME",
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
                      builder: (context) => HomePage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
