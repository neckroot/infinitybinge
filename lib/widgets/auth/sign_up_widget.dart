import 'package:flutter/material.dart';
import 'package:infinitybinge/style/buttons.dart';
import 'package:infinitybinge/style/style.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  State<SignUpWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<SignUpWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: IBStyle.bgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: 56,
                  height: 56,
                  child: SvgPicture.asset("assets/images/logo.svg"),
                ),
                const SizedBox(height: 16),
                const Text(
                  "Join Infinity Binge",
                  style: TextStyle(
                    color: IBStyle.textColorMain,
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                const Text(
                  "Find new movies and TV shows to watch.",
                  style: TextStyle(
                    color: IBStyle.textColorSnd,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),
                Container(
                  padding: const EdgeInsets.fromLTRB(24, 40, 24, 40),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: IBStyle.bgColorTop,
                      border: Border.all(
                        color: const Color.fromRGBO(244, 244, 245, 0.1),
                      )),
                  child: Column(
                    children: const [
                      Text(
                        "To continue, sign up with one these services.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 40),
                      TwitterButton(),
                      SizedBox(height: 24),
                      GoogleButton(),
                      SizedBox(height: 48),
                      Text(
                        "We will never post on your behalf. We will just ask to access your name and profile picture to create your Infinity Binge profile..",
                        style: TextStyle(
                          color: IBStyle.textColorSnd,
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account?",
                      style: TextStyle(
                        color: Color.fromRGBO(107, 114, 128, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("/sign_in");
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9999),
                            side: const BorderSide(
                              width: 1,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 26,
                          vertical: 6,
                        ),
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            color: IBStyle.textColorMain,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    )
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
