import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(32.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.orange, Colors.deepOrangeAccent],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Hero(
                tag: 'dashboard',
                child: Image.asset('images/iron_man.png', scale: 1.2),
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.width * 0.8 * 0.5,
              child: Padding(
                padding: EdgeInsets.all(32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('IRON MAN 2', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 34.0)),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(fontWeight: FontWeight.w200, fontSize: 24.0, letterSpacing: 3.0),
                        children: <TextSpan>[
                          TextSpan(text: 'Doctors \n', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 35.0, color: Colors.white70)),
                          TextSpan(text: '&\n', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25.0, color: Colors.deepPurpleAccent)),
                          TextSpan(text: 'Firefighters \n', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 35.0, color: Colors.white70)),
                          TextSpan(text: 'do it for real '),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Some random text again anad kjshdkjad \ndjkahdkj adsjhadsjk sajhdgajhsd',
                      textAlign: TextAlign.start,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
