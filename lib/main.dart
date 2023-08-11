import 'package:aapkidukaan/widgets/login.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter LoginPage',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => LoginScreen(),
      //   'ForgotPassword': (context) => ForgotPassword(),
      //   'CreateNewAccount':(context) => CreateNewAccount(),
      //   'MyModule':(context) => MyModule(),
      // },
    );
  }
}
