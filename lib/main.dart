import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_market/items.dart';
import 'package:flutter_market/myChart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> _contentList;
  int activeContentNo = 0;

  @override
  void initState() {
    super.initState();

    _contentList = [Items(), MyChart()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.red[400]),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          "Market Application",
          style: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
      ),
      body: _contentList[activeContentNo],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0.0),
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Ali Ahmet"),
              accountEmail: Text("aliahmet@gmail.com"),
              currentAccountPicture: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://cdn.pixabay.com/photo/2016/11/21/14/53/man-1845814_1280.jpg"),
                    fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
              decoration: BoxDecoration(color: Colors.red[400]),
            ),
            ListTile(title: Text("My Orders"), onTap: (){},),
            ListTile(title: Text("Discounts"), onTap: (){},),
            ListTile(title: Text("Settings"), onTap: (){},),
            ListTile(title: Text("Log out"), onTap: (){
              Navigator.pop(context);
            },),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: activeContentNo,
        selectedItemColor: Colors.red[400],
        unselectedItemColor: Colors.grey[600],
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Items")),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), title: Text("My Chart")),
        ],
        onTap: (int buttonPosition) {
          setState(() {
            activeContentNo = buttonPosition;
          });
        },
      ),
    );
  }
}
