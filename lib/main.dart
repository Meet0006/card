import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  // const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Dancing Script',
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            controller: ScrollController(initialScrollOffset: 0.0),
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text(
                  'Drawer',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.red[300],
                ),
              ),
              ListTile(
                title: Text('1. Account info'),
                leading: IconButton(
                  color: Colors.blue,
                  icon: Icon(Icons.account_box),
                  onPressed: () => MyApp(),
                ),
                onTap: () {},
              ),
              ListTile(
                title: Text('2. Setting'),
                leading: IconButton(
                  color: Colors.green,
                  icon: Icon(Icons.settings),
                  onPressed: () => MyApp(),
                ),
                onTap: () {
                  MyApp();
                },
              ),
              ListTile(
                title: Text('3. how it work'),
                leading: IconButton(
                  color: Colors.yellow,
                  icon: Icon(Icons.work),
                  onPressed: () => MyApp(),
                ),
                onTap: () {
                  MyApp();
                },
              ),
              ListTile(
                title: Text('4. help'),
                leading: IconButton(
                  color: Colors.red,
                  icon: Icon(Icons.help),
                  onPressed: () => MyApp(),
                ),
                onTap: () {
                  MyApp();
                },
              ),
              ListTile(
                title: Text('5. saved'),
                leading: IconButton(
                  color: Colors.blue,
                  icon: Icon(Icons.saved_search),
                  onPressed: () => MyApp(),
                ),
                onTap: () {
                  MyApp();
                },
              ),
              ListTile(
                title: Text('6. images'),
                leading: IconButton(
                  color: Colors.green,
                  icon: Icon(Icons.image),
                  onPressed: () => MyApp(),
                ),
                onTap: () {
                  MyApp();
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Hy Hackers'),
          shadowColor: Colors.purple,
          backgroundColor: Colors.teal,
        ),
        backgroundColor: Colors.green[100],
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red[300],
          focusColor: Colors.black,
          child: Icon(Icons.person),
          hoverColor: Colors.blue,
          onPressed: () {},
        ),
        body: Center(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 65,
                  backgroundImage: NetworkImage(
                      'https://images5.alphacoders.com/391/thumb-1920-391658.jpg'),
                ),
                Text(
                  'Hey Meet',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Flutter Developer',
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 18,
                    fontFamily: 'SourceSansPro',
                    letterSpacing: 2.5,
                    wordSpacing: 1.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 230,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                Card(
                  color: Colors.black,
                  shadowColor: Colors.purple,
                  margin: EdgeInsets.symmetric(vertical: 7, horizontal: 20),
                  child: Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.phone_callback,
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(
                          width: 65,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            '+12 - 345  678  90',
                            style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              color: Colors.red[200],
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  color: Colors.black,
                  shadowColor: Colors.purple,
                  margin: EdgeInsets.symmetric(vertical: 7, horizontal: 20),
                  child: Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.mail_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            'meetp0006@gmail.com',
                            style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              color: Colors.red[200],
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
