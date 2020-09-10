import 'package:flutter/material.dart';
import 'package:sample/constants.dart';
import 'package:sample/screens/splash/components/splash_content.dart';
import 'package:sample/size_config.dart';
import 'package:sample/components/default_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int curPage = 0;
  List<Map<String, String>> splashData = [
    {"text": "1", "image": "assets/images/splash_1.png"},
    {"text": "2", "image": "assets/images/splash_2.png"},
    {"text": "3", "image": "assets/images/splash_3.png"},
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
            width: double.infinity,
            child: Column(children: <Widget>[
              Expanded(
                  flex: 3,
                  child: PageView.builder(
                      onPageChanged: (value) {
                        setState(() {
                          curPage = value;
                        });
                      },
                      itemCount: splashData.length,
                      itemBuilder: (context, index) => SplashContent(
                            text: splashData[index]["text"],
                            image: splashData[index]["image"],
                          ))),
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20)),
                    child: Column(
                      children: <Widget>[
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                              splashData.length, (index) => buildDot(index)),
                        ),
                        Spacer(
                          flex: 3,
                        ),
                        DefaultButton(
                          text: "continue",
                          press: () {},
                        ),
                        Spacer()
                      ],
                    ),
                  )),
            ])));
  }

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
        margin: EdgeInsets.only(right: 5),
        width: curPage == index ? 20 : 6,
        height: 6,
        decoration: BoxDecoration(
            color: curPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
            borderRadius: BorderRadius.circular(3)),
        duration: kAnimationDuration);
  }
}
