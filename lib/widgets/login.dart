import 'package:aapkidukaan/widgets/password.dart';
import 'package:aapkidukaan/widgets/text-feild.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../palatte.dart';
import 'background-image.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        BackgroundImage(
          image: 'assets/images/login.png',
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Flexible(
                child: Center(
                  child: Text(
                    'Aapki Dukaan',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextInputField(
                    icon: CupertinoIcons.envelope_fill,
                    hint: 'Email',
                    inputType: TextInputType.emailAddress,
                    inputAction: TextInputAction.next,
                  ),
                  PasswordInput(
                    icon: CupertinoIcons.lock_fill,
                    hint: 'Password',
                    inputAction: TextInputAction.done,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, 'ForgotPassword'),
                    child: Text(
                      'Forgot Password',
                      style: kBodyText2,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  Container(
                    height: size.height * 0.08,
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.indigo,
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => LoginScreen()));
                      },
                      child: Text(
                        "login",
                        style: kBodyText.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  // Container(
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(5),
                  //   border: Border.all(color: Colors.indigo),
                  //   shape: ShapeBorder()
                  // ),
                  // child: Card(elevation: 10.0,),
                  //       ElevatedButton(
                  //         onPressed: () {
                  //           // To do
                  //           Navigator.push(context,
                  //               MaterialPageRoute(builder: (context) => MyModule()));
                  //         },
                  //         child: Text("Go to Change Language Screen "),
                  //       ),
                  //     // ),
                  //   ],
                  // ),

                  // RoundedButton(
                  //   buttonName: 'Login',
                  // ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, 'CreateNewAccount'),
                child: Container(
                  child: Text(
                    'Create New Account',
                    style: kBodyText2,
                  ),
                  decoration: BoxDecoration(
                      border:
                      Border(bottom: BorderSide(width: 1, color: Colors.white))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}