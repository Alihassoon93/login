import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFF5CEBF),
      body: Stack(
        children: [
          Positioned(
            top: 80.0,
            right: 10.0,
            child: Image.asset(
              'assets/images/splash.png',
              height: 500,
              width: 500,
            ),
          ),
          Positioned(
            bottom: 350.0,
            right: 120.0,
            child: Text(
              ' Crave',
              style: GoogleFonts.bowlbyOneSc(
                textStyle: TextStyle(
                  fontSize: 60.0,
                  color: Colors.blueGrey[900],
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 300.0,
            right: 60.0,
            child: Text(
              '盒饭',
              style: GoogleFonts.maShanZheng(
                textStyle: TextStyle(
                  fontSize: 70.0,
                  color: Colors.blueGrey[900],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 230.0,
            left: 40,
            child: Text(
              'Welcome',
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontSize: 30.0,
                  color: Colors.blueGrey[900],
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 200.0,
            left: 40,
            child: Text(
              'We are happy to see you here!',
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontSize: 25.0,
                  color: Colors.blueGrey[900],
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 80.0,
            left: 220,
            child: InkWell(
              onTap: () {
                Get.toNamed('/login');
              },
              child: const Icon(
                Icons.arrow_forward,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
