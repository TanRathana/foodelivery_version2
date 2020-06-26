import 'package:flutter/material.dart';
import 'package:fooddelivery/view/main.dart';
import 'package:provider/provider.dart';
// import 'package:thegorgeousotp/pages/home_page.dart';
// import 'package:thegorgeousotp/pages/login_page.dart';
// import 'package:thegorgeousotp/stores/login_store.dart';
// import 'package:thegorgeousotp/theme.dart';

import 'package:fooddelivery/store/login_store.dart';
import 'package:fooddelivery/view/register.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key key}) : super(key: key);
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    Provider.of<LoginStore>(context, listen: false).isAlreadyAuthenticated().then((result) {
      if (result) {
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (_) =>  BottomNavPage()), (Route<dynamic> route) => false);
      } else {
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (_) => const RegisterPage()), (Route<dynamic> route) => false);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
    );
  }
}
