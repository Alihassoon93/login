import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFF5CEBF),
      body: Stack(
        children: [
          Positioned(
              top: 520,
              right: 10.0,
              child: Image.asset(
                'assets/images/login1.png',
                height: 600,
                width: 600,
              )),
          Positioned(
            top: 270,
            left: 60,
            child: Text(
              'Sign In',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontSize: 40.0,
                  color: Colors.brown[900],
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          Positioned(
            top: 320,
            left: 60,
            child: Row(
              children: [
                Text(
                  "Don't have an account?",
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontSize: 22.0,
                      color: Colors.brown[900],
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 55,
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed('/sginup');
                  },
                  child: Text(
                    "Get One",
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        fontSize: 22.0,
                        color: Colors.blue[400],
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 365.0,
            left: 60.0,
            child: Container(
              height: 50.0,
              width: 375.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: TextField(
                style: const TextStyle(fontSize: 20.0),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "  Email",
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: Colors.pink.shade300,
                  ),
                  hintStyle: TextStyle(color: Colors.grey[700]),
                ),
              ),
            ),
          ),
          Positioned(
            top: 430.0,
            left: 60.0,
            child: Container(
              height: 50.0,
              width: 375.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: TextField(
                style: const TextStyle(fontSize: 20.0),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "  Password",
                  prefixIcon: Icon(
                    Icons.security_outlined,
                    color: Colors.pink.shade300,
                  ),
                  hintStyle: TextStyle(color: Colors.grey[700]),
                ),
              ),
            ),
          ),
          Positioned(
            top: 480.0,
            left: 55.0,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Forget Password?",
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    fontSize: 20.0,
                    color: Colors.brown[900],
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 420.0,
            left: 150.0,
            child: ElevatedButton(
              clipBehavior: Clip.antiAlias,
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(190.0, 40.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              onPressed: () {
                Get.toNamed('/home');
                Fluttertoast.showToast(
                    msg: "Signed In",
                    toastLength: Toast.LENGTH_SHORT,
                    timeInSecForIosWeb: 1,
                    fontSize: 16.0);
              },
              child: Text(
                'Sign In',
                style: GoogleFonts.roboto(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 15.0,
            right: 50.0,
            child: Text(
              '好\n好\n吃\n饭',
              style: GoogleFonts.zhiMangXing(
                textStyle: TextStyle(
                  fontSize: 80.0,
                  color: Colors.brown[800],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
