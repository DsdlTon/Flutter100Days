import 'package:flutter100day/day22/models/Collocation.dart';
import 'package:flutter100day/day22/models/Post.dart';
import 'package:flutter100day/day22/models/User.dart';

class Sample {
  static User ton = new User(
    name: "Supakrit Ton",
    username: "@supakrit.ton",
    followers: 400,
    following: 190,
    profilePicture: "assets/images/me.jpg",
    collocation: [
      new Collocation(
        name: "Photography",
        tags: ["HD Photos", "Weather", "Photography"],
        thumbnail: "assets/images/inspiration1.jpg",
        posts: [
          new Post(
            location: "BKK, Thailand",
            dateAgo: "3 min ago",
            photos: [
              'assets/images/inspiration2.jpg',
              'assets/images/inspiration3.jpg',
              'assets/images/inspiration4.jpg',
            ],
          ),
          new Post(
            location: "Ladkrabang",
            dateAgo: "2 week ago",
            photos: [
              'assets/images/inspiration4.jpg',
              'assets/images/inspiration5.jpg',
              'assets/images/inspiration6.jpg',
            ],
          )
        ],
      ),
      new Collocation(
        name: "Photography",
        tags: ["HD Photos", "Weather", "Photography"],
        thumbnail: "assets/images/inspiration4.jpg",
        posts: [
          new Post(
            location: "Thailand",
            dateAgo: "3 min ago",
            photos: [
              'assets/images/party1.jpg',
              'assets/images/party2.jpg',
              'assets/images/party3.jpg',
            ],
          ),
          new Post(
            location: "Siam Paragon",
            dateAgo: "2 week ago",
            photos: [
              'assets/images/shopping1.jpg',
              'assets/images/shopping2.jpg',
              'assets/images/shopping3.jpg',
            ],
          ),
        ],
      ),
    ],
  );

  static User leo = new User(
    name: "Anusorn Leo",
    username: "@anusorn.leo",
    followers: 400,
    following: 190,
    profilePicture: "assets/images/leo.jpg",
    collocation: [
      new Collocation(
        name: "Photography",
        tags: ["HD Photos", "Weather", "Photography"],
        thumbnail: "assets/images/inspiration1.jpg",
        posts: [
          new Post(
            location: "BKK, Thailand",
            dateAgo: "3 min ago",
            photos: [
              'assets/images/inspiration2.jpg',
              'assets/images/inspiration3.jpg',
              'assets/images/inspiration4.jpg',
            ],
          ),
          new Post(
            location: "Ladkrabang",
            dateAgo: "2 week ago",
            photos: [
              'assets/images/inspiration4.jpg',
              'assets/images/inspiration5.jpg',
              'assets/images/inspiration6.jpg',
            ],
          ),
        ],
      ),
    ],
  );

  static Post postOne = new Post(
    user: ton,
    location: "BKK, Thailand",
    dateAgo: "3 min ago",
    photos: [
      'assets/images/travel1.jpg',
      'assets/images/travel2.jpg',
      'assets/images/travel3.jpg',
    ],
    relatedPhotos: [
      'assets/images/travel4.jpg',
      'assets/images/travel3.jpg',
      'assets/images/travel2.jpg',
      'assets/images/travel1.jpg',
      'assets/images/travel5.jpg',
    ],
  );

  static Post postTwo = new Post(
    user: leo,
    location: "Phuket, Thailand",
    dateAgo: "3 min ago",
    photos: [
      'assets/images/travel3.jpg',
      'assets/images/travel2.jpg',
      'assets/images/travel1.jpg',
    ],
    relatedPhotos: [
      'assets/images/travel4.jpg',
      'assets/images/travel3.jpg',
      'assets/images/travel2.jpg',
      'assets/images/travel1.jpg',
      'assets/images/travel5.jpg',
    ],
  );
}
