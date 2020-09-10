import 'package:flutter/material.dart';
import 'package:sample/constants.dart';
import 'package:sample/size_config.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Function press;

  const DefaultButton({Key key, this.text, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: FlatButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
          color: kPrimaryColor,
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white, fontSize: getProportionateScreenWidth(18)),
          )),
    );
  }
}
