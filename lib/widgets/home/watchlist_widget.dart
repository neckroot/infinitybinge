import 'package:flutter/material.dart';
import 'package:infinitybinge/style/style.dart';

class WatchListWidget extends StatefulWidget {
  const WatchListWidget({super.key});

  @override
  State<WatchListWidget> createState() => _WatchListWidgetState();
}

class _WatchListWidgetState extends State<WatchListWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 55,
          child: Placeholder(
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(64, 32, 64, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "You aren't logged in yet",
                style: TextStyle(
                  color: IBStyle.textColorMain,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "Please log in first, after that you will be able to view your watchlist right here.",
                style: TextStyle(
                  color: IBStyle.textColorSnd,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 32),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/sign_in");
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9999),
                    ),
                  ),
                ),
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromRGBO(67, 56, 202, 1),
                        Color.fromRGBO(109, 40, 217, 1),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(9999),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 36,
                      vertical: 18,
                    ),
                    child: Text(
                      "Log in",
                      style: TextStyle(
                        color: IBStyle.textColorMain,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
