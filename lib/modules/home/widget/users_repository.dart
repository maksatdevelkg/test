import 'package:maksat_flutter_application/core/users.dart';

class UsersRepository {
  Future<List <User>> fetchUsers () async {
    await Future.delayed(Duration(seconds: 2));
    return allUsers().users;
  }
}