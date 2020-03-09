import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {

  MainPage({this.email});

  String url =('www.naver.com');

  final String email;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),

        home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: new AppBar(
          backgroundColor: Colors.white,
          title: new Center(child: new Text("EVERY ONE")),
          textTheme: Theme.of(context).textTheme.apply(
            bodyColor: Colors.black,
            fontFamily: 'dx.ttf',
            displayColor: Colors.black
          ),

        actions: <Widget>[
          new IconButton(
            icon: new Image.asset('assets/set.jpg'),
            onPressed: () {
              FirebaseAuth.instance.signOut();
            } ,
          )
        ],
        ), 

        bottomNavigationBar: CurvedNavigationBar(
      backgroundColor: Colors.indigo,
      items: <Widget>[
        Icon(Icons.home, size: 30),
        Icon(Icons.add, size: 30),
        Icon(Icons.account_circle, size: 30),
      ],
      onTap: (index) {
        //Handle button tap
      },
  ),     
           ),
    );

    Widget  _floatPic() {
      return Container (
        height: 100.0,
        color: Colors.white,
        child: new Column(
          children: <Widget>[
            new Flexible(
              child: new ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 21,
                itemBuilder: (BuildContext context, int index) {
                  return new Container(
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          margin: EdgeInsets.all(10.0),
                          child: new Image.asset(
                            (index == 0)
                                ? "assets/images/your_acc.png"
                                : "assets/images/friend_acc.png",
                            height: 60.0,
                          ),
                        ),
                        new Text((index == 0) ? "You" : " Friend $index")
                      ],
                    ),
                  );
                })),
        new Container(
          height: 0.5,
          color: Colors.grey[300],
        )
      ],
    ),
  );
Widget _listView() {
  return Container(
    child: new Flexible(
        child: new ListView.builder(
            itemCount: 21,
            itemBuilder: (BuildContext context, int index) {
              return new Container(
                child: (index == 0)
                    ? _floatPic()
                    : new Container(
                        color: Colors.white,
                        height: 390.0,
                        child: new Column(
                          children: <Widget>[

                          ],
                        ),
                      ),
              );
            })),
  );
}
}

             
    }

  }
  
  



