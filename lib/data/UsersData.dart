import '../app/models/UserModel.dart';

class UsersData {
  /// Create a user model to use in whole file.
  static List<UserModel> users = [
    UserModel(
      id: 1,
      name: "Shoaib",
      username: 'spyder',
      email: "shoabkhan33@gmail.com",
      phone: "9589988584",
      avatar: "https://random.imagecdn.app/500/500",
      gender: "male",
      password: "secret",
    ),
  ];
}
