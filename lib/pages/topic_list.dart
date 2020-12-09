import 'package:flutter/material.dart';
import 'package:quizApp/model/topic.dart';
import 'package:quizApp/pages/topic_video.dart';

class TopicListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new TopicListListState();
}

class TopicListListState extends State<TopicListPage> {
  List<Topic> topics = new List();

  @override
  void initState() {
    createDummyData();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black,
      appBar: new AppBar(
        title: new Text(
          "Categories".toUpperCase(),
          style: new TextStyle(color: Colors.white, fontFamily: "Arquitecta"),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),
      body: new Center(
        child: new Container(
          child: new ListView.builder(
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => new TopicCard(
              topic: topics[index],
              callback: (category) {
                _gotoCategoryDetailPage(category);
              },
            ),
            itemCount: topics.length,
            padding: new EdgeInsets.all(20.0),
          ),
        ),
      ),
    );
  }

  void _gotoCategoryDetailPage(Topic topic) {
    Navigator.push(
      context,
      new MaterialPageRoute(
          builder: (context) => new TopicVideoPage(
                topic: topic,
              )),
    );
  }

  createDummyData() {
    setState(() {
      topics.clear();

      topics.add(new Topic(
          id: 7,
          name: "Travel",
          image: "assets/images/travel.jpg",
          questions: 53));

      topics.add(new Topic(
          id: 1,
          name: "Sport",
          image: "assets/images/sport.jpg",
          questions: 123));

      topics.add(new Topic(
          id: 2, name: "Art", image: "assets/images/art.jpg", questions: 12));

      topics.add(new Topic(
          id: 3,
          name: "Business",
          image: "assets/business.jpg",
          questions: 98));

      topics.add(new Topic(
          id: 4,
          name: "Cooking",
          image: "assets/images/cooking.jpg",
          questions: 122));

      topics.add(new Topic(
          id: 5,
          name: "Movie",
          image: "assets/images/movie.jpg",
          questions: 321));

      topics.add(new Topic(
          id: 6,
          name: "Music",
          image: "assets/images/music.jpg",
          questions: 31));
    });
  }
}

typedef void CategoryClick(Topic topic);

class TopicCard extends StatelessWidget {
  Topic topic;
  CategoryClick callback;

  TopicCard({this.topic, this.callback});

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        callback(topic);
      },
      child: new Card(
        color: Colors.white,
        margin: new EdgeInsets.all(10.0),
        child: new Container(
          height: 100.0,
          width: double.infinity,
          child: new Stack(
            children: <Widget>[
              new Image.asset(
                topic.image,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              new Container(
                color: new Color(0x80000000),
              ),
              new Center(
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      topic.name,
                      style: new TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontFamily: "OpenSanBold"),
                    ),
                    new Text(
                      "${topic.questions} Questions",
                      style: new TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontFamily: "OpenSanRegular"),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
