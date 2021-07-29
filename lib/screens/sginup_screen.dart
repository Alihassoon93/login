import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SginUpScreen extends StatefulWidget {
  const SginUpScreen({Key? key}) : super(key: key);

  @override
  State<SginUpScreen> createState() => _SginUpScreenState();
}

class _SginUpScreenState extends State<SginUpScreen> {
  bool _isAgreed = false;
  bool _remmberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFF5CEBF),
      body: Stack(
        children: [
          Positioned(
            top: 65.0,
            left: 20.0,
            child: GestureDetector(
              onTap: () => Get.toNamed('/login'),
              child: const Icon(
                Icons.arrow_back_outlined,
                size: 30.0,
              ),
            ),
          ),
          Positioned(
            top: 290.0,
            left: 60,
            child: Text(
              'Sign Up',
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
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "  Name",
                  prefixIcon: Icon(
                    Icons.person_outlined,
                    color: Colors.pink.shade300,
                  ),
                  hintStyle: TextStyle(color: Colors.grey[700]),
                ),
              ),
            ),
          ),
          Positioned(
            top: 440.0,
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
            top: 510.0,
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
            top: 580.0,
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
                  hintText: "  Confirm Password",
                  prefixIcon: Icon(
                    Icons.security_update_good_outlined,
                    color: Colors.pink.shade300,
                  ),
                  hintStyle: TextStyle(color: Colors.grey[700]),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 320.0,
            left: 50,
            child: Row(
              children: [
                Checkbox(
                    checkColor: Colors.white,
                    value: _isAgreed,
                    onChanged: (bool? value) {
                      setState(() {
                        _isAgreed = value!;
                      });
                    }),
                Text(
                  "Agree with the terms and privacy policy",
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontSize: 20.0,
                      color: Colors.brown[900],
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 280.0,
            left: 50,
            child: Row(
              children: [
                Checkbox(
                    checkColor: Colors.white,
                    value: _remmberMe,
                    onChanged: (bool? value) {
                      setState(() {
                        _remmberMe = value!;
                      });
                    }),
                Text(
                  "Remmber Me",
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontSize: 20.0,
                      color: Colors.brown[900],
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 180.0,
            left: 150.0,
            child: ElevatedButton(
              clipBehavior: Clip.antiAlias,
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(190.0, 40.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              onPressed: () {
                Get.toNamed('/login');
                Fluttertoast.showToast(
                    msg: "Signed Up Successfully!",
                    toastLength: Toast.LENGTH_SHORT,
                    timeInSecForIosWeb: 1,
                    fontSize: 16.0);
              },
              child: Text(
                'Sign Up',
                style: GoogleFonts.roboto(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
