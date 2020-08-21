import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              actions: <Widget>[
                IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
              ],
              leading:
                  IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
              backgroundColor: Colors.lime[800],
            ),
            body: Center(
              child: Column(
                // mainAxisSize: MainAxisSize.max,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // height: 100,
                    // width: double.infinity,
                    child: FirstRow(),
                  ),
                  ImageRow(),
                ],
              ),
            )));
  }
}

class FirstRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue,
      // width: double.infinity,
      // height: double.infinity,
      //margin: EdgeInsets.all(20),
      padding: EdgeInsets.only(top: 20),

      child: Container(
        //   margin: EdgeInsets.fromLTRB(15, 20, 20, 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "John McDonald " + (new Random()).nextInt(100).toString(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Row(
                  children: [Icon(Icons.location_on), Text("Loc An gles CA ")],
                ),
                Row(children: [
                  Button1(),
                ]),
                SecondRow(),
              ],
            ),
            Column(
              children: [
                Container(
                    width: 100.0,
                    height: 150.0,
                    decoration: new BoxDecoration(
                        image: new DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              "https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
                            )),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Button1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
          padding: EdgeInsets.only(top: 50, bottom: 50),
          child: RaisedButton(
              onPressed: () {},
              color: Colors.lime[800],
              child: Text("Follow", style: TextStyle(color: Colors.black)))),
    );
  }
}

class ImageRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Image(
              image: AssetImage("assets/images/img1.jpeg"),
            ),
          ),
          Expanded(
            child: Image(
              image: AssetImage("assets/images/img1.jpeg"),
            ),
          ),
          Expanded(
            child: Image(
              image: AssetImage("assets/images/img1.jpeg"),
            ),
          ),
          Expanded(
            child: Image(
              image: AssetImage("assets/images/img1.jpeg"),
            ),
          ),
          Expanded(
            child: Image(
              image: AssetImage("assets/images/img1.jpeg"),
            ),
          ),
        ],
      ),
    );
  }
}

class SecondRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

        // width: 200,
        // height: 200,
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text("34",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Text("Posts",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                    color: Colors.grey)),
          ],
        ),
        Column(
          children: [
            Text("1256",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Text("Followers",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                    color: Colors.grey)),
          ],
        )
      ],
    ));
  }
}
