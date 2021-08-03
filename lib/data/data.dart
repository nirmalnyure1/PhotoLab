import 'package:socialmediaui/models/postmodel.dart';
import 'package:socialmediaui/models/usermodel.dart';

final _post1 = Post(
  imageUrl: 'assets/images/img1.jpg',
  author: user1,
  title: 'Post 0',
  location: 'Location 0',
  likes: 10,
  comments: 37,
);
final _post2 = Post(
  imageUrl: 'assets/images/img2.jpg',
  author: user1,
  title: 'Post 1',
  location: 'Location 1',
  likes: 532,
  comments: 129,
);
final _post3 = Post(
  imageUrl: 'assets/images/img3.jpg',
  author: user1,
  title: 'Post 2',
  location: 'Location 2',
  likes: 985,
  comments: 213,
);
final _post4 = Post(
  imageUrl: 'assets/images/img4.jpg',
  author: user1,
  title: 'Post 3',
  location: 'Location 3',
  likes: 402,
  comments: 25,
);
final _post5 = Post(
  imageUrl: 'assets/images/img5.jpg',
  author: user1,
  title: 'Post 4',
  location: 'Location 4',
  likes: 628,
  comments: 74,
);
final _post6 = Post(
  imageUrl: 'assets/images/img6.jpg',
  author: user1,
  title: 'Post 5',
  location: 'Location 5',
  likes: 299,
  comments: 28,
);

final _post7 = Post(
  imageUrl: 'assets/images/img7.jpg',
  author: user1,
  title: 'Post 5',
  location: 'Location 5',
  likes: 299,
  comments: 28,
);

final posts = [_post1, _post2, _post3, _post4, _post5, _post6, _post7];

final _user1 = User(
  profileImageUrl: 'assets/images/user1.jpg',
  backgroundImageUrl: '',
  name: '',
  following: 0,
  followers: 0,
  posts: [],
  favorites: [],
);
final _user2 = User(
  profileImageUrl: 'assets/images/user2.jpg',
  backgroundImageUrl: 'assets/images/user_background.jpg',
  name: 'nas',
  following: 453,
  followers: 937,
  posts: [],
  favorites: [],
);

final _user3 = User(
  profileImageUrl: 'assets/images/user3.jpg',
  backgroundImageUrl: 'assets/images/user_background.jpg',
  name: 'nas',
  following: 453,
  followers: 937,
  posts: [],
  favorites: [],
);
final _user4 = User(
  profileImageUrl: 'assets/images/user4.jpg',
  backgroundImageUrl: 'assets/images/user_background.jpg',
  name: 'nas',
  following: 453,
  followers: 937,
  posts: [],
  favorites: [],
);
final _user5 = User(
  profileImageUrl: 'assets/images/user5.jpg',
  backgroundImageUrl: 'assets/images/user_background.jpg',
  name: 'nas',
  following: 453,
  followers: 937,
  posts: [],
  favorites: [],
);
final _user6 = User(
  profileImageUrl: 'assets/images/user6.jpg',
  backgroundImageUrl: 'assets/images/user_background.jpg',
  name: 'nas',
  following: 453,
  followers: 937,
  posts: [],
  favorites: [],
);

final users = [_user1, _user2, _user3, _user4, _user5, _user6];

// final _yourPosts = [_post1, _post3, _post5];
// final _yourFavorites = [_post6, _post2, _post4];

// Current User
final User currentUser = User(
  profileImageUrl: 'assets/images/user1.jpg',
  backgroundImageUrl: 'assets/images/bg.jpg',
  name: 'Subit',
  following: 453,
  followers: 937,
  posts: _yourPosts,
  favorites: _yourFavorites,
);

final User user1 = User(
  profileImageUrl: 'assets/images/user.jpg',
  backgroundImageUrl: 'assets/images/user_background.jpg',
  name: 'avi',
  following: 453,
  followers: 937,
  posts: [],
  favorites: [],
);
final _yourPosts = [_post1, _post3, _post5];
final _yourFavorites = [_post1, _post2, _post4];
