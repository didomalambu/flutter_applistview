import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "LIstview",
    home: new Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red[900],
        title: new Text("Listview with image"),
      ),
      body: new ListView(
        children: <Widget>[

          new ListTeamAsset(image: "kings.jpeg",name: "KINGS",),
          new ListTeamAsset(image: "lakers.png",name: "LAKERS",),
          new ListTeamNetwork(image: "http://wwwcdn.howdesign.com/wp-content/uploads/LogoPrimary_300x329.jpg",name: "WARRIOS",),
          new ListTeamNetwork(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfxFFjN5Jgj8Hr0zOnwALYgjoAEFVIQogaRio1R9izatgZQ1ml",name: "WIZARD",),

        ],
      ),
    );
  }
}

class ListTeamNetwork extends StatelessWidget {

  ListTeamNetwork ({this.image, this.name});

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(20.0),
      child: new Center(
        child: new Column(
          children: <Widget>
          [
            new Image(image: new NetworkImage(image),
              width: 100.0,height: 100.0,
            ),
            new Text(name, style: new TextStyle(fontSize: 15.0),
            )
          ],
        ),
      ),
    );
  }
}

// please add the images link in pubspec.yaml
class ListTeamAsset extends StatelessWidget {

  ListTeamAsset ({this.image, this.name});

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(20.0),
      child: new Center(
        child: new Column(
          children: <Widget>
          [
            new Image.asset('assets/'+image),
            new Text(name, style: new TextStyle(fontSize: 15.0),)
          ],
        ),
      ),
    );
  }
}