import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScreen extends StatelessWidget {
  final Map<String, dynamic> planet;
  const AboutScreen({super.key, required this.planet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 16.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Image(
                        image: AssetImage("assets/images/Frame2.png"),
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 120,
                      ),
                    ),
                    Positioned(
                      left: 8,
                      top: 8,
                      child: IconButton(
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.red,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                      ),
                    ),
                    Positioned(
                      top: 16,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Text(
                          planet['name'],
                          style: GoogleFonts.spaceGrotesk(
                            textStyle: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 7,
                      left: 0,
                     
                      child: Center(
                        child: Text(
                          "Earth: Our Blue Marble",
                          style: GoogleFonts.spaceGrotesk(
                            textStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          blurRadius: 16,
                          offset: Offset(0, 8),
                        ),
                      ],
                    ),
                    child: Image(
                      image: AssetImage(planet['image']),
                      width: 180,
                      height: 180,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  "About",
                  style: GoogleFonts.spaceGrotesk(
                    textStyle: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  planet['about'],
                  style: GoogleFonts.spaceGrotesk(
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 24),
                Divider(color: Colors.white24),
                const SizedBox(height: 16),
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: (planet['feature'] as List<String>).map((feature) => Text(feature,   style: GoogleFonts.spaceGrotesk(
            textStyle: TextStyle(
              fontSize: 15,
              color: Colors.white70,
              fontWeight: FontWeight.w500,
            ),
          ),)).toList(),
            ),
            
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

