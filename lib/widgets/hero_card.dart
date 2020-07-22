import 'package:flutter/material.dart';
import 'package:heroz/background_clipper.dart';
import 'package:heroz/detail_page.dart';

class HeroCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: () {
            // Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage()));
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, a, b) => DetailPage(),
                transitionDuration: Duration(milliseconds: 200),
              ),
            );
          },
          child: Align(
            alignment: Alignment.bottomCenter,
            child: ClipPath(
              clipper: BackgroundClipper(),
              child: Hero(
                tag: 'dashboard',
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.8 * 1.33,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.orange,
                        Colors.deepOrangeAccent,
                      ],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Align(
          child: Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.8 * 0.05),
            child: Image.asset('images/iron_man.png', scale: 1.5),
          ),
          alignment: Alignment.center,
        ),
        Positioned(
          bottom: 15.0,
          left: 40.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('IRON MAN', style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white, letterSpacing: 2.0)),
              Text('Click More Details', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white70)),
            ],
          ),
        ),
      ],
    );
  }
}
