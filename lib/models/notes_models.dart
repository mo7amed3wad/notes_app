// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hive/hive.dart';

part 'notes_models.g.dart';

@HiveType(typeId: 1)
class NoteSModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subtitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;
  NoteSModel({
    required this.title,
    required this.subtitle,
    required this.date,
    required this.color,
  });
}