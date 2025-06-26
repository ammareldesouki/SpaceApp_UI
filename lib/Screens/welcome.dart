import 'package:flutter/material.dart';
import 'package:space_ui/Screens/home.dart';
import 'package:space_ui/widgets/navigation_buttom.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(child: Container(color: Color(0xff0E0E0E))),

            Positioned(
              right: 70,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Stack(
                  children: [
                    SizedBox(
                      height: 740,
                      child: Image(
                        image: AssetImage('assets/images/Frame1.png'),
                      ),
                    ),
                    Positioned(
                      top: 300,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: SizedBox(
                          width: 265,
                          height: 174,
                          child: Text(
                            "Explore The Universe",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 48,
                              color: Colors.white,
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            TNavigationButton(title: "explore",onprees: (){Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const HomeScreen(),
                ),
              );},),
          ],
        ),
      ),
    );
  }
}

