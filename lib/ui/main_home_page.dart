import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multiple_ui/ui/ui_five/home_page.dart';
import 'package:flutter_multiple_ui/ui/ui_four/home_page.dart';
import 'package:flutter_multiple_ui/ui/ui_three/home_page.dart';
import 'package:flutter_multiple_ui/ui/ui_two/home_page.dart';

import 'Ui_one/ui_one_home_page.dart';

class MainHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Flutter Multiple Ui",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Builder(
        builder: (context) => Padding(padding: const EdgeInsets.symmetric(vertical: 20,),
          child: kIsWeb ? _buildWeb(context) : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => UiOneHomePage()));
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 20,
                        ),
                        child: Text(
                          "Travel App Ui Design",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HomePagetwo()));
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 20,
                        ),
                        child: Text(
                          "City App Ui Design",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HomePagethree()));
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 20,
                        ),
                        child: Text(
                          "Food App Ui Design",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HomePagefour()));
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 20,
                        ),
                        child: Text(
                          "Side Slide App Ui Design",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HomePageFive()));
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 20,
                        ),
                        child: Text(
                          "Navigation App Ui Design",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }

  List<MainBean> imageList = [
    MainBean(
      "Travel App Ui Design",
      "assets/images/main_1.jpg",
      MaterialPageRoute(builder: (context) => UiOneHomePage()),
    ),
    MainBean(
      "City App Ui Design",
      "assets/images/main_2.jpg",
      MaterialPageRoute(builder: (context) => HomePagetwo()),
    ),
    MainBean(
      "Food App Ui Design",
      "assets/images/main_3.jpg",
      MaterialPageRoute(builder: (context) => HomePagethree()),
    ),
    MainBean(
      "Side Slide App Ui Design",
      "assets/images/main_4.png",
      MaterialPageRoute(builder: (context) => HomePagefour()),
    ),
    MainBean(
      "Navigation App Ui Design",
      "assets/images/main_5.png",
      MaterialPageRoute(builder: (context) => HomePageFive()),
    ),
  ];

  Widget _buildWeb(BuildContext buildContext) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.only(
          left: 50,
          top: 20,
          right: 50,
        ),
        child: Wrap(
          spacing: 30,
          children: <Widget>[
            ...imageList.map((f) => _buildWebItem(buildContext, f)).toList()
          ],
        ),
      ),
    );
  }

  Widget _buildWebItem(BuildContext context, MainBean f) {
    double width = MediaQuery.of(context).size.width / 5;

    if (width < 100) {
      width = 100;
    }
    if (MediaQuery.of(context).size.width < 500) {
      width = MediaQuery.of(context).size.width / 3;
    }

    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(f.route);
      },
      child: Column(
        children: <Widget>[
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                f.url,
                width: width,
                height: width,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 10,
              bottom: 50,
            ),
            child: Text(
              f.title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MainBean {
  String title;
  String url;
  Route route;

  MainBean(this.title, this.url, this.route);
}
