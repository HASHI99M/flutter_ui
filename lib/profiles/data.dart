class User {
  String name;
  String address;
  String photo;
  String description;

  User({this.name, this.address, this.photo, this.description});
}

class Profile {
  User user;
  int following;
  int follower;
  int friend;
  List bg;

  Profile({this.user, this.following, this.follower, this.friend, this.bg});
}

class ProviderData {
  static Profile getProfile = Profile(
      user: User(
          name: 'Hashim Masry',
          description:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of typeand scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in',
          address: 'Gaza - 8 Street',
          photo: 'assets/images/profile_photo.jpg'),
      follower: 158,
      following: 2185,
      bg: [
        'assets/images/bg_profile.jpg',
        'assets/images/bg.jpg',
        'assets/images/bg2.jpg',
        'assets/images/bg3.jpg',
        'assets/images/profile_photo.jpg',
        'assets/images/bg4.jpg',
        'assets/images/bg5.jpg',
        'assets/images/bg6.jpg',
        'assets/images/bg7.jpg',
        'assets/images/bg8.jpg',
      ],
      friend: 150);
}
