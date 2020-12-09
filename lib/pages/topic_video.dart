import 'package:flutter/material.dart';
import 'package:quizApp/model/topic.dart';

class TopicVideoPage extends StatefulWidget {

  Topic topic;

  TopicVideoPage({Key key, this.topic}) : super(key: key);

  @override
  State<StatefulWidget> createState() =>
      new TopicVideoPageState(topic: topic);
}

class TopicVideoPageState extends State<TopicVideoPage> {
  Topic topic;

  TopicVideoPageState({this.topic});


  @override
  Widget build(BuildContext context) {
   
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          topic.name.toUpperCase(),
          style: new TextStyle(color: Colors.white, fontFamily: "Arquitecta"),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),

    );
    
  }
}
