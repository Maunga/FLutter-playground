import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final String title;

  HomeScreen({this.title});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class MyTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String description;
  final Color iconColor;

  const MyTile(
      {@required this.iconData,
      @required this.iconColor,
      @required this.title,
      @required this.description});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        iconData,
        color: iconColor,
        size: 40,
      ),
      title: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                  color: Colors.white54,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            Text(description,
                style: TextStyle(
                  color: Colors.white38,
                  fontStyle: FontStyle.italic,
                )),
          ],
        ),
      ),
      trailing: Icon(Icons.arrow_forward_ios, color: iconColor,),
    );
  }
}

class RowTemplate extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String description;
  final Color iconcolor;

  const RowTemplate(
      {@required this.iconData,
      @required this.iconcolor,
      @required this.title,
      @required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                iconData,
                color: iconcolor,
                size: 40,
              ),
            ),
            Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.white54,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                Text(description,
                    style: TextStyle(
                      color: Colors.white38,
                      fontStyle: FontStyle.italic,
                    )),
              ],
            )),
          ]),
          Divider()
        ],
      ),
    );
  }
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "More",
          ),
          centerTitle: true,
        ),
        body: ListView(children: [
          Container(
            color: Colors.blue,
            child: Row(children: [
              Icon(
                Icons.adb,
                size: 64,
                color: Colors.white,
              ),
              Container(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Help Support Devrant',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Text('Join the Devrant++ supporter program',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                ],
              )),
            ]),
          ),
          MyTile(
            iconData: Icons.person,
            iconColor: Colors.blue,
            title: 'Profile',
            description: 'Edit your profile',
          ),
          MyTile(
            iconData: Icons.chat_bubble,
            iconColor: Colors.amber,
            title: 'Discussions',
            description: 'Rants with active commenting',
          ),
        ]));
  }
}
