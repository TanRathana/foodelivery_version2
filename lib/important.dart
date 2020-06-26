import 'package:flutter/material.dart';
import 'package:fooddelivery/view/register.dart';
import 'package:provider/provider.dart';
import 'package:fooddelivery/store/login_store.dart';
import 'package:fooddelivery/main.dart';
import 'package:fooddelivery/view/splash.dart';



void main() => runApp(App());

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<LoginStore>(
          create: (_) => LoginStore(),
        )
      ],
      child:  MaterialApp(
        home: SplashPage(),
      ),
    );
  }
}