import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: new Color(0xFF9DA7C8),
          ),
        ),
        centerTitle: true,
        backgroundColor: new Color(0xFF293A4F),
        leading: Icon(Icons.arrow_back_ios,
        color: Colors.green),
        elevation: 0,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 250,
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: ListView(
                children: <Widget>[
                  Divider(
                    thickness: 1,
                    color: new Color(0xFF9DA7C8).withOpacity(0.2),
                  ),
                  ListTile(
                    leading: Icon(Icons.person,
                      color: new Color(0xFF9DA7C8),
                    ),
                    title: Text('Edit Profile',
                    style: TextStyle(
                      color: new Color(0xFF9DA7C8),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: new Color(0xFF9DA7C8).withOpacity(0.2),
                  ),
                  ListTile(
                    leading: Icon(Icons.security,
                      color: new Color(0xFF9DA7C8),
                    ),
                    title: Text('Privacy Policy',
                      style: TextStyle(
                        color: new Color(0xFF9DA7C8),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: new Color(0xFF9DA7C8).withOpacity(0.2),
                  ),
                  ListTile(

                    leading: Icon(Icons.folder,
                      color: new Color(0xFF9DA7C8),
                    ),
                    title: Text('Default Folder',
                      style: TextStyle(
                        color: new Color(0xFF9DA7C8),
                      ),
                    ),
                    subtitle: Text("/storage/emulated/0/Documents",
                      style: TextStyle(
                        color: new Color(0xFF9DA7C8),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: new Color(0xFF9DA7C8).withOpacity(0.2),
                  )
                ],
              ),
            ),
            Spacer(),
            Container(
              height: MediaQuery.of(context).size.height/15.5,
              margin: EdgeInsets.fromLTRB(MediaQuery.of(context).size.height/70, 0, MediaQuery.of(context).size.height/70, 0),
              color: Colors.green,
              child: Center(
                child: Text("Logout",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            )
          ],
        ),
      backgroundColor: new Color(0xFF293A4F), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
