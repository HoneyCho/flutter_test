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
                  IconRow(),
                  TestRow(),
                  LastRow(),
                ],
              ),
            )));
  }
}

class FirstRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Container(
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
      width: 200,
      child: Padding(
          padding: EdgeInsets.only(top: 50, bottom: 50, right: 80),
          child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {},
              color: Colors.lime[800],
              child: Text(
                "Follow",
                style: TextStyle(color: Colors.white),
              ))),
    );
  }
}

class IconRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      height: 100,
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Icon(Icons.android),
          ),
          Expanded(
            child: Icon(Icons.file_download),
          ),
          Expanded(
            child: Icon(Icons.location_on),
          ),
          Expanded(
            child: Icon(Icons.location_on),
          ),
          Expanded(
            child: Icon(Icons.location_on),
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
        width: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text("34",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
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
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
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

class ImageRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: Image(
                image: AssetImage('assets/images/img1.jpeg'),
                fit: BoxFit.fill, // use this
              ),
            ),
          ),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: Image(
                image: AssetImage('assets/images/img3.jpeg'),
                fit: BoxFit.fill, // use this
              ),
            ),
          ),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: Image(
                image: AssetImage('assets/images/img4.jpeg'),
                fit: BoxFit.fill, // use this
              ),
            ),
          ),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: Image(
                image: AssetImage('assets/images/img5.jpeg'),
                fit: BoxFit.fill, // use this
              ),
            ),
          ),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: Image(
                image: AssetImage('assets/images/img2.png'),
                fit: BoxFit.fill, // use this
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LastRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, right: 10, left: 10),
      child: Text(
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled.",
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.justify,
        maxLines: 4,
      ),
    );
  }
}

class TestRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(right: 10, left: 10),
        child: Row(
          children: [
            Text(
              "About ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ],
        ));
  }
}
