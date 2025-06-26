import 'package:flutter/material.dart';
import 'package:space_ui/Screens/about_screen.dart';
import 'package:space_ui/widgets/navigation_buttom.dart';
import 'package:space_ui/data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int  currentIndex = 0;
 

  void _nextPlanet() {
    setState(() {
      if (currentIndex <Data.planets.length - 1) {
        currentIndex++;
      }
    });
  }

  void _previousPlanet() {
    setState(() {
      if (currentIndex > 0) {
        currentIndex--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
     final planet = Data.planets[currentIndex];
    return Scaffold(
      backgroundColor: Color(0xff0E0E0E),
      body: Column(
        children: [
          Stack(
            children: [
              Image(image: AssetImage("assets/images/Frame2.png")),
              Positioned(
                top: 20,
                left: 0,
                right: 0,
                child: Center(
                  child: Text(
                    "Explore",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 190,
                left: 14,
                child: SizedBox(
                  width: 280,
                  child: Text(
                    "Which planet would you like to explore? ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            flex: 6,
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Image(image: AssetImage(planet['image'])),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: _previousPlanet,
                      icon: Icon(Icons.arrow_back_ios_new, color: Colors.white),
                      style: IconButton.styleFrom(backgroundColor: Colors.red),
                    ),
                    Text(
                      planet['name'],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    IconButton(
                      onPressed: _nextPlanet,
                      icon: Icon(
                        Icons.navigate_next_outlined,
                        color: Colors.white,
                      ),
                      style: IconButton.styleFrom(backgroundColor: Colors.red),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: TNavigationButton(
              title: "Explore ${planet['name']}",
              onprees: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>  AboutScreen(planet: planet,),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
