import 'user.dart';

class Messages {
  final int id;
  final User user;
  final body;
  final DateTime time;

  Messages(
    this.id,
    this.user,
    this.body,
    this.time,
  );

}
