import 'package:flutter/material.dart';
import 'package:sample/constants.dart';
import 'package:sample/size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({Key key, this.text, this.image}) : super(key: key);

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Spacer(),
      Text(
        "HSWallet",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: kPrimaryColor,
          fontSize: getProportionateScreenWidth(36),
        ),
      ),
      Text(
        text,
        textAlign: TextAlign.center,
      ),
      Spacer(
        flex: 2,
      ),
      Image.asset(
        image,
        height: getProportionateScreenHeight(265),
        width: getProportionateScreenWidth(235),
      )
    ]);
  }
}
