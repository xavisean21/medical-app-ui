import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'home_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: size.height * 0.70,
            width: double.infinity,
            child: SvgPicture.asset("lib/images/undraw_doctors_7fdn.svg"),
          ),
          Text(
            "All specialists in one app",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Find your doctor and make an appointment with one tap",
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            child: Container(
              height: size.height * 0.08,
              width: size.width * 0.85,
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade300,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                  child: Text(
                "Get Started",
                style: TextStyle(color: Colors.white),
              )),
            ),
          )
        ],
      ),
    );
  }
}
