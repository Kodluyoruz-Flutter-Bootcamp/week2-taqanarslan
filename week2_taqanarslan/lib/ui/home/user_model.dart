class UserModel {
  static int totalUser = 0;
  late int id;
  final String name;
  final String birthDate;

  UserModel({required this.name, required this.birthDate}) {
    totalUser++;
    id = totalUser;
  }
}

class UserOperations {
  List<UserModel> userList = [
    UserModel(name: "Atakan Arslan", birthDate: "23/04/2001"),
    UserModel(name: "Elif İrem Külcü", birthDate: "19/01/2001"),
    UserModel(name: "Ezgi Balici", birthDate: "07/08/1998"),
    UserModel(name: "Kübra Bilgiç", birthDate: "14/02/1994"),
    UserModel(name: "Baran Başaran", birthDate: "10/09/2001"),
  ];
  static UserOperations? _instance;
  static UserOperations get instance {
    _instance ??= UserOperations._init();
    return _instance!;
  }

  UserOperations._init();

  List<UserModel> getUsers() {
    return userList;
  }

  void addUser(UserModel userModel) {
    userList.add(userModel);
  }

  void deleteUser(UserModel userModel) {
    userList.remove(userModel);
  }
}
