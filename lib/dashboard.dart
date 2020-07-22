import 'package:flutter/material.dart';
import 'package:heroz/widgets/hero_card.dart';

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
        child: Padding(
          padding: EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34.0, letterSpacing: 3.0),
                  children: <TextSpan>[
                    TextSpan(text: 'We save ', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25.0)),
                    TextSpan(text: 'the World in ', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25.0)),
                    TextSpan(text: 'Fiction', style: TextStyle(color: Colors.deepOrange)),
                  ],
                ),
              ),
              RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  style: TextStyle(fontWeight: FontWeight.w200, fontSize: 24.0, letterSpacing: 3.0),
                  children: <TextSpan>[
                    TextSpan(text: 'Doctors', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 35.0, color: Colors.deepPurpleAccent)),
                    TextSpan(text: ' & ', style: TextStyle(fontWeight: FontWeight.w200, fontSize: 25.0, color: Colors.grey)),
                    TextSpan(text: 'Firefighters ', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 35.0, color: Colors.deepOrange)),
                    TextSpan(text: 'do it for real '),
                  ],
                ),
              ),
              Expanded(
                child: HeroCard(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
