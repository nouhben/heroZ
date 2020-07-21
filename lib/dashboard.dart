import 'package:flutter/material.dart';
import 'package:heroz/background_clipper.dart';
import 'package:heroz/detail_page.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: ClipPath(
            clipper: BackgroundClipper(),
            child: InkWell(
              onTap: () {
//                Navigator.push(
//                  context,
//                  MaterialPageRoute(builder: (context) => DetailPage()),
//                );
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, a, b) => DetailPage(),
                    transitionDuration: Duration(milliseconds: 200),
                  ),
                );
              },
              child: Hero(
                tag: 'dashboard',
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.6,
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
      ),
    );
  }
}
