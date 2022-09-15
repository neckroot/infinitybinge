import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:infinitybinge/style/buttons.dart';
import 'package:infinitybinge/style/style.dart';

class SignInWidget extends StatefulWidget {
  const SignInWidget({Key? key}) : super(key: key);

  @override
  State<SignInWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<SignInWidget> {
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
                  "Sign in to Infinity Binge",
                  style: TextStyle(
                    color: IBStyle.textColorMain,
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
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
                        "To continue, sign in with one these services.",
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
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(
                        color: IBStyle.textColorSnd,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("/sign_up");
                      },
                      child: const Text(
                        "Sign up",
                        style: TextStyle(
                          color: IBStyle.textColorLogo,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
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
