import 'package:flutter/material.dart';
import 'package:infinitybinge/widgets/auth/sign_in_widget.dart';
import 'package:infinitybinge/widgets/auth/sign_up_widget.dart';
import 'package:infinitybinge/widgets/home/main_screen.dart';
import 'package:infinitybinge/widgets/home/watchlist_widget.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Infinity Binge',
      routes: {
        "/main_scr": (context) => const MainScreenWidget(),
        "/watch_list": (context) => const WatchListWidget(),
        "/sign_in": (context) => const SignInWidget(),
        "/sign_up": (context) => const SignUpWidget(),
      },
      initialRoute: "/main_scr",
    );
  }
}
