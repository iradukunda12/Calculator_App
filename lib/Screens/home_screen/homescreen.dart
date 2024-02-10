// import 'package:calculate/Widgets/calculationtext.dart';
// import 'package:calculate/Widgets/calculatorbutton.dart';
// import 'package:flutter/material.dart';
// import 'package:calculate/model/buttondata.dart';

// class homescreen extends StatelessWidget {
//   const homescreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final rows = [row1, row2, row3, row4, row5];
//     return Scaffold(
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           const SizedBox(
//             height: 100,
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 36),
//             child: CalculationText(),
//           ),
//           const Spacer(),
//           ListView.separated(
//             physics: NeverScrollableScrollPhysics(),
//             shrinkWrap: true,
//             separatorBuilder: (_, __) => const SizedBox(
//               height: 20,
//             ),
//             itemCount: rows.length,
//             itemBuilder: (_, index) => Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: rows[index],
//             ),
//           ),
//           const SizedBox(
//             height: 56,
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:calculate/Screens/about.dart';
import 'package:calculate/Screens/home_screen/homePage.dart';
import 'package:calculate/Widgets/calculationtext.dart';
import 'package:calculate/Widgets/calculatorbutton.dart';
import 'package:calculate/utils/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  List<Widget> get row1 => const [
        CalculatorButton(
          text: 'C',
          textColor: Color(0xFFB94D2B),
        ),
        CalculatorButton(
          text: '+/\u2212',
          fontSize: 32,
        ),
        CalculatorButton(text: '%'),
        CalculatorButton(
          text: '\u00F7',
          fontSize: 44,
          fontWeight: FontWeight.normal,
        ),
      ];

  List<Widget> get row2 => [
        for (final i in ['1', '2', '3'])
          CalculatorButton(
            text: i,
            shape: Shape.circle,
          ),
        const CalculatorButton(
          text: '\u00D7',
          fontSize: 52,
          fontWeight: FontWeight.normal,
        ),
      ];

  List<Widget> get row3 => [
        for (final i in ['4', '5', '6'])
          CalculatorButton(
            text: i,
            shape: Shape.circle,
          ),
        const CalculatorButton(
          text: '\u2212',
          fontSize: 44,
          fontWeight: FontWeight.normal,
        ),
      ];

  List<Widget> get row4 => [
        for (final i in ['7', '8', '9'])
          CalculatorButton(
            text: i,
            shape: Shape.circle,
          ),
        const CalculatorButton(
          text: '+',
          fontSize: 44,
          fontWeight: FontWeight.normal,
        ),
      ];

  List<Widget> get row5 => const [
        CalculatorButton(
          text: '0',
          width: 156,
          shape: Shape.stadium,
        ),
        CalculatorButton(
          text: '.',
          fontSize: 44,
          fontWeight: FontWeight.normal,
        ),
        CalculatorButton(
          text: '=',
          fontSize: 44,
          fontWeight: FontWeight.normal,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    final rows = [row1, row2, row3, row4, row5];

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: kPrimaryColor),
        backgroundColor: kSecondaryColor,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60.0),
          child: Text(
            "Calculator App",
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const SizedBox(height: 100),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 36),
            child: CalculationText(),
          ),
          const Spacer(),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (_, __) => const SizedBox(height: 20),
            itemCount: rows.length,
            itemBuilder: (_, index) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: rows[index],
            ),
          ),
          const SizedBox(height: 56),
        ],
      ),
    );
  }
}
