import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(
        seconds: 3,
      ),
      () {
        Navigator.pushReplacementNamed(context, '/home');
      },
    );
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xffece4dc),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Column(
                  children: [
                    Image.asset(
                      'images/programming.png',
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Better Learn Programming',
                      style: GoogleFonts.ubuntu(
                        textStyle: TextStyle(
                          color: Color(0xff76424e),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 20,
                      ),
                      child: Text(
                        'Powered by RippleBee',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Color(0xff8c8798),
                            fontSize: 24,
                            letterSpacing: 0.4,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
