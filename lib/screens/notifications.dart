import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  Notifications({Key key}) : super(key: key);

  @override
  _NotificationState createState() => _NotificationState();
}

class _NotificationState extends State<Notifications> {
  EdgeInsets _five = EdgeInsets.all(5.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: _five * 2,
              child: Icon(
                Icons.notifications_active,
                size: 80.0,
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              margin: _five * 2,
              child: Text('Notification will appear here'),
            ),
            Container(
              margin: _five,
              child: Text('No Notifications..!'),
            ),
          ],
        ),
      ),
    );
  }
}
