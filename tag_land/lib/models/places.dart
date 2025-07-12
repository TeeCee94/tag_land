import 'package:uuid/uuid.dart';

class Places {
  Places({required this.title}) : id = Uuid().v4();

  final String id;
  final String title;
}