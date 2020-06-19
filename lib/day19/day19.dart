import 'package:flutter/material.dart';

class FacebookUI extends StatefulWidget {
  @override
  _FacebookUIState createState() => _FacebookUIState();
}

class _FacebookUIState extends State<FacebookUI> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            // color: Colors.orange,
            padding: EdgeInsets.fromLTRB(20, 50, 20, 10),
            height: 100.0,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.grey[200],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          hintText: 'Search',
                          hintStyle: TextStyle(color: Colors.grey)),
                    ),
                  ),
                ),
                SizedBox(width: 20.0),
                Icon(
                  Icons.camera_alt,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: EdgeInsets.fromLTRB(20.0, 0, 20.0, 20.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: <Widget>[
                                Text(
                                  'Stories',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Show Archive',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 150.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            storyCard(
                              storyImage: 'assets/images/inspiration4.jpg',
                              profileImage: 'assets/images/me.jpg',
                              userName: 'Supakrit Ton',
                            ),
                            storyCard(
                              storyImage: 'assets/images/inspiration1.jpg',
                              profileImage: 'assets/images/fin.jpg',
                              userName: 'FlipFin',
                            ),
                            storyCard(
                              storyImage: 'assets/images/inspiration6.jpg',
                              profileImage: 'assets/images/benning.jpg',
                              userName: 'Benning Maisoti',
                            ),
                            storyCard(
                              storyImage: 'assets/images/inspiration7.jpg',
                              profileImage: 'assets/images/leo.jpg',
                              userName: 'Anusorn Leo',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      feedCard(
                          profileImage: 'assets/images/me.jpg',
                          userName: 'Supakrit Ton',
                          feedTime: '1 hr ago',
                          feedText: 'Flutter God!!',
                          feedImage: 'assets/images/postImage.jpg',
                          feedLike: '1.8K',
                          feedComment: '54 Comments'),
                      feedCard(
                          profileImage: 'assets/images/fin.jpg',
                          userName: 'FlipFin',
                          feedTime: '34 min ago',
                          feedText: 'Dancing God!!!',
                          feedImage: 'assets/images/feedImage2.jpg',
                          feedLike: '2.5K',
                          feedComment: '103 Comments'),
                      feedCard(
                          profileImage: 'assets/images/me.jpg',
                          userName: 'Supakrit Ton',
                          feedTime: '1 hr ago',
                          feedText: 'Flutter God!!',
                          feedImage: 'assets/images/postImage.jpg',
                          feedLike: '1.8K',
                          feedComment: '19 Comments'),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget storyCard({storyImage, profileImage, userName}) {
  return AspectRatio(
    aspectRatio: 1.5 / 2,
    child: Container(
      margin: EdgeInsets.only(right: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: AssetImage(storyImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(.3),
              Colors.black.withOpacity(.1),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(5.0),
              width: 35.0,
              height: 35.0,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 3),
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(profileImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                userName,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget feedCard({
  profileImage,
  userName,
  feedTime,
  feedText,
  feedImage,
  feedLike,
  feedComment,
}) {
  return Container(
    margin: EdgeInsets.only(bottom: 20),
    //feedCard Skeleton
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          //feedCard Title
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              //left Side of feedCard title
              Row(
                children: <Widget>[
                  Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(profileImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    // color: Colors.blue,
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          userName,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 2.0),
                        Text(
                          feedTime,
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //Right Side of feedCard title
              IconButton(
                icon: Icon(Icons.more_horiz, size: 30.0),
                onPressed: () {},
              ),
            ],
          ),
        ),
        SizedBox(height: 5.0),
        //feedText Container
        Container(
          child: Text(
            feedText,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
        ),
        SizedBox(height: 10.0),
        //feedImage Container
        Container(
          height: 180,
          decoration: BoxDecoration(
            // color: Colors.red,
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: AssetImage(feedImage),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 10.0),
        //Reaction Row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            //Reaction Widget
            Row(
              children: <Widget>[
                likeIcon(),
                Transform.translate(
                  offset: Offset(-5, 0),
                  child: loveIcon(),
                ),
                Text(
                  feedLike,
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
            //Comment
            Text(
              feedComment,
              style: TextStyle(color: Colors.grey[700]),
            ),
          ],
        ),
        //Button Row
        SizedBox(height: 10.0),
        Container(
          // color: Colors.red,
          height: 35.0,
          width: double.infinity,
          child: Row(
            children: <Widget>[
              likeButton(true),
              commentButton(),
              shareButton(),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget likeIcon() {
  return Container(
    width: 25,
    height: 25,
    decoration: BoxDecoration(
        color: Colors.blue[600],
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white)),
    child: Icon(
      Icons.thumb_up,
      color: Colors.white,
      size: 12.0,
    ),
  );
}

Widget loveIcon() {
  return Container(
    width: 25,
    height: 25,
    decoration: BoxDecoration(
        color: Colors.red[600],
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white)),
    child: Icon(
      Icons.favorite,
      color: Colors.white,
      size: 12.0,
    ),
  );
}

Widget likeButton(isActive) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50.0),
      border: Border.all(
        color: Colors.grey[200],
      ),
    ),
    child: Row(
      children: <Widget>[
        Icon(
          Icons.thumb_up,
          color: isActive == true ? Colors.blue[600] : Colors.grey,
          size: 20.0,
        ),
        SizedBox(width: 10.0),
        Text(
          'Like',
          style: TextStyle(
            color: isActive == true ? Colors.blue[600] : Colors.grey,
          ),
        ),
      ],
    ),
  );
}

Widget commentButton() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50.0),
      border: Border.all(
        color: Colors.grey[200],
      ),
    ),
    child: Row(
      children: <Widget>[
        Icon(
          Icons.chat,
          color: Colors.grey,
          size: 20.0,
        ),
        SizedBox(width: 10.0),
        Text(
          'Comment',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    ),
  );
}

Widget shareButton() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50.0),
      border: Border.all(
        color: Colors.grey[200],
      ),
    ),
    child: Row(
      children: <Widget>[
        Icon(
          Icons.share,
          color: Colors.grey,
          size: 20.0,
        ),
        SizedBox(width: 10.0),
        Text(
          'Share',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    ),
  );
}
