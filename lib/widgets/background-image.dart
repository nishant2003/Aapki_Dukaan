import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({Key? key, required String image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) =>
          LinearGradient(
            colors: [Colors.black, Colors.black12],
            begin: Alignment.bottomCenter,
            end: Alignment.center,
          ).createShader(bounds),
      blendMode: BlendMode.darken,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/login.png'),
            fit: BoxFit.cover,
            // colorFilter: ColorFilter.mode(
            //     Color(0xFF3D3D3D) ,
            //     BlendMode.lighten,
            // ),
          ),
        ),
      ),
    );
  }
}

